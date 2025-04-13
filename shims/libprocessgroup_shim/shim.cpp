#include <android-base/logging.h>
#include <unistd.h>

extern "C" int SetTaskProfiles(int pid, const char* profiles, int flags) {
    LOG(INFO) << "libprocessgroup_shim_sm8550: fake SetTaskProfiles(" << pid << ", " << profiles << ", " << flags << ")";
    return 0;
}
