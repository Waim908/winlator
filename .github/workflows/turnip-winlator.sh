export CFLAGS="-O3 -march=armv8-a -mtune=generic -flto=auto -s"
export CXXFLAGS="-O3 -march=armv8-a -mtune=generic -flto=auto -s"
export LDFLAGS="-O3 -flto=auto -s"

export LD_RPATH=/data/data/com.winlator/files/rootfs/usr/lib
export LD_FILE=$LD_RPATH/ld-linux-aarch64.so.1

mkdir -p /data/data/com.winlator/files/rootfs/usr/
pip install mako --break-system-package
pip install PyYAML --break-system-package
# pip install meson --break-system-package
cd /tmp
git clone https://github.com/brunodev85/mesa3d-custom.git
cd mesa3d-custom
cd $1 || exit 1

# 真的只有一个动态库和share相关配置✅
meson setup builddir \
	--strip \
	-Dprefix=/data/data/com.winlator/files/rootfs/usr/ \
	-Dbuildtype=release \
	-Dplatforms=x11 \
	-Dgallium-drivers= \
	-Dtools= \
	-Dvulkan-drivers=freedreno \
	-Degl=disabled \
	-Dgles1=disabled \
	-Dgles2=disabled \
	-Dglvnd=disabled \
	-Dllvm=disabled \
	-Dgallium-extra-hud=true \
	-Dgallium-vdpau=disabled \
	-Dgbm=disabled \
	-Dvulkan-layers= \
	-Dfreedreno-kmds=kgsl \
	-Dlibunwind=disabled \
	-Dvalgrind=disabled \
	-Dmicrosoft-clc=disabled \
	-Dvideo-codecs=all || exit 1

meson compile -C builddir || exit 1
meson install -C builddir

cd /data/data/com.winlator/files/rootfs/usr/lib
patchelf --set-rpath "$LD_RPATH" --set-interpreter "$LD_FILE" libvulkan_freedreno.so

ls

mkdir -p /tmp/output/usr/lib
mkdir -p /tmp/output/usr/share/vulkan/icd.d/

cp -r -p libvulkan_freedreno.so /tmp/output/usr/lib
cd /data/data/com.winlator/files/rootfs/usr/share/vulkan/icd.d/
sed -i 's/"api_version": "[^"]*"/"api_version": "1.1.246"/' freedreno_icd.aarch64.json || exit 1
cp -r -p freedreno_icd.aarch64.json /tmp/output/usr/share/vulkan/icd.d/

cd /tmp/output/
tar -I 'zstd -T8 -9' -cvf /tmp/turnip-$2.tzst . || exit 1