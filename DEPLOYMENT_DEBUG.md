Linux devbox 6.8.0 #1 SMP PREEMPT_DYNAMIC Fri Feb 20 20:38:43 UTC 2026 x86_64 x86_64 x86_64 GNU/Linux

--- /etc/os-release ---
PRETTY_NAME="Ubuntu 24.04.4 LTS"
NAME="Ubuntu"
VERSION_ID="24.04"
VERSION="24.04.4 LTS (Noble Numbat)"
VERSION_CODENAME=noble
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=noble
LOGO=ubuntu-logo

--- whoami ---
jules

--- id ---
uid=1001(jules) gid=1001(jules) groups=1001(jules),27(sudo),103(docker)

--- sudo -n true ---

--- docker --version ---
Docker version 29.2.1, build a5c7197

--- docker info ---
Client: Docker Engine - Community
 Version:    29.2.1
 Context:    default
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.31.1
    Path:     /usr/libexec/docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v5.1.0
    Path:     /usr/libexec/docker/cli-plugins/docker-compose

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 29.2.1
 Storage Driver: overlayfs
  driver-type: io.containerd.snapshotter.v1
 Logging Driver: json-file
 Cgroup Driver: systemd
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local splunk syslog
 CDI spec directories:
  /etc/cdi
  /var/run/cdi
 Swarm: inactive
 Runtimes: io.containerd.runc.v2 runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: dea7da592f5d1d2b7755e3a161be07f43fad8f75
 runc version: v1.3.4-0-gd6d73eb8
 init version: de40ad0
 Security Options:
  cgroupns
 Kernel Version: 6.8.0
 Operating System: Ubuntu 24.04.4 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 4
 Total Memory: 7.773GiB
 Name: devbox
 ID: 65d2211e-5fbb-4288-8c8c-651649b3ea25
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Experimental: false
 Insecure Registries:
  ::1/128
  127.0.0.0/8
 Live Restore Enabled: false
 Firewall Backend: iptables


--- podman --version ---
podman not found

--- buildah --version ---
buildah not found

--- nerdctl --version ---
nerdctl not found

--- systemctl status docker ---
● docker.service - Docker Application Container Engine
     Loaded: loaded (/usr/lib/systemd/system/docker.service; enabled; preset: enabled)
     Active: active (running) since Fri 2026-06-12 19:37:50 UTC; 5min ago
TriggeredBy: ● docker.socket
       Docs: https://docs.docker.com
   Main PID: 911 (dockerd)
      Tasks: 10
     Memory: 121.6M (peak: 124.4M)
        CPU: 3month 6d 18h 57min 10.316s
     CGroup: /system.slice/docker.service
             └─911 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock

--- ps aux ---
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.6  0.1  21060 12160 ?        Ss   19:37   0:02 /usr/sbin/init
root           2  0.0  0.0      0     0 ?        S    19:37   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    19:37   0:00 [pool_workqueue_release]
root           4  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-rcu_g]
root           5  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-rcu_p]
root           6  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-slub_]
root           7  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-netns]
root           8  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/0:0-events]
root           9  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/0:0H-events_highpri]
root          12  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-mm_pe]
root          13  0.0  0.0      0     0 ?        I    19:37   0:00 [rcu_tasks_kthread]
root          14  0.0  0.0      0     0 ?        I    19:37   0:00 [rcu_tasks_trace_kthread]
root          15  0.0  0.0      0     0 ?        S    19:37   0:00 [ksoftirqd/0]
root          16  0.0  0.0      0     0 ?        I    19:37   0:00 [rcu_preempt]
root          17  0.0  0.0      0     0 ?        S    19:37   0:00 [migration/0]
root          18  0.0  0.0      0     0 ?        S    19:37   0:00 [cpuhp/0]
root          19  0.0  0.0      0     0 ?        S    19:37   0:00 [cpuhp/1]
root          20  0.3  0.0      0     0 ?        S    19:37   0:01 [migration/1]
root          21  0.0  0.0      0     0 ?        S    19:37   0:00 [ksoftirqd/1]
root          23  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/1:0H-events_highpri]
root          24  0.0  0.0      0     0 ?        S    19:37   0:00 [cpuhp/2]
root          25  0.3  0.0      0     0 ?        S    19:37   0:01 [migration/2]
root          26  0.0  0.0      0     0 ?        S    19:37   0:00 [ksoftirqd/2]
root          27  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/2:0-events]
root          28  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/2:0H-kblockd]
root          29  0.0  0.0      0     0 ?        S    19:37   0:00 [cpuhp/3]
root          30  0.3  0.0      0     0 ?        S    19:37   0:01 [migration/3]
root          31  0.0  0.0      0     0 ?        S    19:37   0:00 [ksoftirqd/3]
root          33  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/3:0H-events_highpri]
root          34  0.0  0.0      0     0 ?        S    19:37   0:00 [kdevtmpfs]
root          35  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-inet_]
root          36  0.0  0.0      0     0 ?        S    19:37   0:00 [oom_reaper]
root          37  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-write]
root          38  0.0  0.0      0     0 ?        S    19:37   0:00 [kcompactd0]
root          39  0.0  0.0      0     0 ?        SN   19:37   0:00 [ksmd]
root          40  0.0  0.0      0     0 ?        SN   19:37   0:00 [khugepaged]
root          41  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-crypt]
root          42  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-kbloc]
root          50  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/0:1H-kblockd]
root          61  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/u8:2-events_unbound]
root          62  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/u8:3-events_unbound]
root          78  0.0  0.0      0     0 ?        S    19:37   0:00 [kswapd0]
root          84  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-kthro]
root          86  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/2:2-events]
root          90  0.0  0.0      0     0 ?        S    19:37   0:00 [irq/24-ACPI:Ged]
root          95  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-acpi_]
root         178  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/1:2-events]
root         179  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-mld]
root         180  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-ipv6_]
root         181  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/1:1H-kblockd]
root         185  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-kstrp]
root         187  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/3:1H-kblockd]
root         252  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/u8:4-events_unbound]
root         341  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/u8:5-ext4-rsv-conversion]
root         413  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/2:1H-kblockd]
root         414  0.0  0.0      0     0 ?        S    19:37   0:00 [jbd2/vdb-8]
root         415  0.0  0.0      0     0 ?        I<   19:37   0:00 [kworker/R-ext4-]
root         439  0.1  0.2  67136 19384 ?        S<s  19:37   0:00 /usr/lib/systemd/systemd-journald
root         773  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/0:2-events]
root         782  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/3:2-cgroup_destroy]
root         783  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/3:3-events]
root         790  0.0  0.0  23864  5760 ?        Ss   19:37   0:00 /usr/lib/systemd/systemd-udevd
root         823  0.0  0.0      0     0 ?        I    19:37   0:00 [kworker/1:3-cgroup_destroy]
message+     833  0.0  0.0   8216  4224 ?        Ss   19:37   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         841  0.0  0.1  17672  8192 ?        Ss   19:37   0:00 /usr/lib/systemd/systemd-logind
root         844  0.0  0.0   6104  1792 tty1     Ss+  19:37   0:00 /sbin/agetty -o -p -- \u --noclear - linux
root         845  0.0  0.0   6148  2176 ttyS0    Ss+  19:37   0:00 /sbin/agetty -o -p -- \u --keep-baud 115200,57600,38400,9600 - vt220
root         872  1.0  0.5 1866880 48592 ?       Ssl  19:37   0:03 /usr/bin/containerd
root         874  0.0  0.0  12024  7936 ?        Ss   19:37   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         876  0.0  0.0   9292  3584 ?        Ss   19:37   0:00 /usr/bin/socat -d VSOCK-LISTEN:22,fork TCP4:127.0.0.1:22
root         877  0.1  0.1  14220  9472 ?        Ss   19:37   0:00 sshd: swebot [priv]
jules        887  0.1  0.1  20100 11264 ?        Ss   19:37   0:00 /usr/lib/systemd/systemd --user
jules        888  0.0  0.0  20392  3156 ?        S    19:37   0:00 (sd-pam)
jules        907  0.0  0.0  14480  6040 ?        S    19:37   0:00 sshd: swebot@notty
root         911 2501779  1.0 1988052 87808 ?    Ssl  19:37 141267:09 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock
root         918  0.0  0.1  14188  9472 ?        Ss   19:37   0:00 sshd: swebot [priv]
jules        929  0.0  0.0  14448  6048 ?        S    19:37   0:00 sshd: swebot@notty
jules       3011  0.0  0.0  12596  4036 ?        Ss   19:38   0:00 tmux new-session -d -s default -c /app -e JULES_SESSION_ID=13050480736286902680 -e GIT_TERMINAL_PROMPT=0
jules       3012  0.0  0.1  12092  8576 pts/0    Ss   19:38   0:00 -bash
jules       6028  0.0  0.0   7740  3328 ?        Ss   19:43   0:00 bash -c echo "${BASHPID}"  RUN_ROOT_DIR=/run/devbox-session/default PANE_PID="3012"  # sleep 1  # enable this to mimic very slow command start. # set -x umask 0 sudo mkdir -m777 -p "${RUN_ROOT_DIR}"  coproc inw {     LC_ALL=C exec inotifywait -e create,moved_to --include '/stamp$' "${RUN_ROOT_DIR}" 2>&1 }  set -m (     # If the pane has exited, also end the wait.     if ps -p ${PANE_PID} > /dev/null; then       tail --pid "${PANE_PID}" -f /dev/null     fi     touch "${RUN_ROOT_DIR}/stamp" ) & pane_waiter=$!  echo "pane waiter is at $pane_waiter"  while IFS= read -r -u "${inw[0]}" line 2>/dev/null; do     if [ "$line" = "Watches established." ]; then         break     fi done if [ -e "${RUN_ROOT_DIR}/stamp" ]; then     echo "stamp found"     kill "$inw_PID" else     echo "waiting for stamp"     wait -n fi echo "done" kill -- "-$pane_waiter" || exit 0
jules       6035  0.0  0.0   2896  1792 ?        S    19:43   0:00 inotifywait -e create,moved_to --include /stamp$ /run/devbox-session/default
jules       6036  0.0  0.0   7740  1816 ?        S    19:43   0:00 bash -c echo "${BASHPID}"  RUN_ROOT_DIR=/run/devbox-session/default PANE_PID="3012"  # sleep 1  # enable this to mimic very slow command start. # set -x umask 0 sudo mkdir -m777 -p "${RUN_ROOT_DIR}"  coproc inw {     LC_ALL=C exec inotifywait -e create,moved_to --include '/stamp$' "${RUN_ROOT_DIR}" 2>&1 }  set -m (     # If the pane has exited, also end the wait.     if ps -p ${PANE_PID} > /dev/null; then       tail --pid "${PANE_PID}" -f /dev/null     fi     touch "${RUN_ROOT_DIR}/stamp" ) & pane_waiter=$!  echo "pane waiter is at $pane_waiter"  while IFS= read -r -u "${inw[0]}" line 2>/dev/null; do     if [ "$line" = "Watches established." ]; then         break     fi done if [ -e "${RUN_ROOT_DIR}/stamp" ]; then     echo "stamp found"     kill "$inw_PID" else     echo "waiting for stamp"     wait -n fi echo "done" kill -- "-$pane_waiter" || exit 0
jules       6038  0.0  0.0   6144  1792 ?        S    19:43   0:00 tail --pid 3012 -f /dev/null
jules       6099  0.0  0.0  11320  4224 pts/0    R+   19:43   0:00 ps aux

--- free -h ---
               total        used        free      shared  buff/cache   available
Mem:           7.8Gi       351Mi       7.1Gi       524Ki       538Mi       7.4Gi
Swap:             0B          0B          0B

--- df -h ---
Filesystem               Size  Used Avail Use% Mounted on
/dev/vdb                  98G   26M   93G   1% /rom/overlay
overlayfs:/overlay/root   98G   26M   93G   1% /
tmpfs                    3.9G     0  3.9G   0% /dev/shm
tmpfs                    1.6G  292K  1.6G   1% /run
tmpfs                    5.0M     0  5.0M   0% /run/lock
tmpfs                    1.0M  4.0K 1020K   1% /run/credentials/@system
tmpfs                    3.9G  224K  3.9G   1% /var/lib/systemd
tmpfs                    796M  4.0K  796M   1% /run/user/1001

--- cgroups ---
/sys/fs/cgroup:
cgroup.controllers
cgroup.max.depth
cgroup.max.descendants
cgroup.procs
cgroup.stat
cgroup.subtree_control
cgroup.threads
cpu.stat
cpu.stat.local
cpuset.cpus.effective
cpuset.cpus.isolated
cpuset.mems.effective
dev-hugepages.mount
dev-mqueue.mount
init.scope
io.stat
memory.numa_stat
memory.reclaim
memory.stat

--- namespaces ---
cgroup
ipc
mnt
net
pid
pid_for_children
time
time_for_children
user
uts

--- open ports ---
Netid State  Recv-Q Send-Q Local Address:Port Peer Address:PortProcess
tcp   LISTEN 0      0            0.0.0.0:22        0.0.0.0:*
tcp   LISTEN 0      0                  *:22              *:*
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
4f55086f7dd0: Pulling fs layer
4f55086f7dd0: Download complete
4f55086f7dd0: Pull complete
docker: error from registry: You have reached your unauthenticated pull rate limit. https://www.docker.com/increase-rate-limit

Run 'docker run --help' for more information
Python 3.12.13
v22.22.1
go version go1.24.3 linux/amd64
ruby 3.2.3 (2024-01-18 revision 52bb2ac0a6) [x86_64-linux-gnu]
