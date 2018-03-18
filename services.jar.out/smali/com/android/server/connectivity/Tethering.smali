.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"

# interfaces
.implements Lcom/android/server/connectivity/tethering/IControlsTethering;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$DnsmasqThread;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherState;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    }
.end annotation


# static fields
.field private static final ACTION_STOP_HOTSPOT:Ljava/lang/String; = "com.android.server.connectivity.tethering.action.STOP_HOTSPOT"

.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DNSMASQ_POLLING_INTERVAL:I = 0x3e8

.field private static final DNSMASQ_POLLING_MAX_TIMES:I = 0xa

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final HOTSPOT_DISABLE_MS:I = 0x493e0

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final STOP_HOTSPOT_REQUEST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;

.field private static final VDBG:Z = true

.field private static final dhcpLocation:Ljava/lang/String; = "/data/misc/dhcp/dnsmasq.leases"

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIface:Ljava/lang/String;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mIntentStopHotspot:Landroid/app/PendingIntent;

.field private mL2ConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNotificationId:I

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPreferredUpstreamMobileApn:I

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

.field private mUsbTetherRequested:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTetherRequested:Z


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/connectivity/Tethering;ZI)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "interfaceType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/WifiDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .param p1, "up"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->checkTetherConnectStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->maybeLogMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .locals 0
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    new-array v0, v5, [Ljava/lang/Class;

    .line 146
    const-class v1, Lcom/android/server/connectivity/Tethering;

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    aput-object v1, v0, v3

    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    aput-object v1, v0, v4

    .line 145
    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 149
    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    .line 148
    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 160
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 161
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 162
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 189
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    const v1, 0x1040036

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    .line 199
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 200
    const-string/jumbo v1, "192.168.42.2"

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.42.254"

    aput-object v1, v0, v3

    const-string/jumbo v1, "192.168.43.2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "192.168.43.254"

    aput-object v1, v0, v5

    .line 201
    const-string/jumbo v1, "192.168.44.2"

    aput-object v1, v0, v6

    const-string/jumbo v1, "192.168.44.254"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.45.2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.45.254"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "192.168.46.2"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.46.254"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.47.2"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.47.254"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "192.168.48.2"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.48.254"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.2"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.254"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 199
    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 235
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 166
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 224
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    .line 225
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    .line 237
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 238
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 239
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 240
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 242
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 244
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    .line 247
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 248
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string/jumbo v3, "TetherMaster"

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 249
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->start()V

    .line 251
    new-instance v2, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    .line 253
    new-instance v2, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v2, "com.android.server.connectivity.tethering.action.STOP_HOTSPOT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.connectivity.tethering.action.STOP_HOTSPOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, "stopHotspotIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v2, v7, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIntentStopHotspot:Landroid/app/PendingIntent;

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string/jumbo v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 274
    const v3, 0x1070019

    .line 273
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 275
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v6, :cond_1

    .line 276
    :cond_0
    sget-object v2, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 283
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string/jumbo v3, "8.8.8.8"

    aput-object v3, v2, v5

    .line 285
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string/jumbo v3, "8.8.4.4"

    aput-object v3, v2, v6

    .line 287
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mAlarmManager:Landroid/app/AlarmManager;

    .line 288
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 236
    return-void
.end method

.method private cancelTetherProvisioningRechecks(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraRemTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 662
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 663
    .restart local v0    # "ident":J
    .restart local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    .line 664
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 663
    throw v3
.end method

.method private checkDunRequired()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1236
    const/4 v1, 0x2

    .line 1237
    .local v1, "secureSetting":I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1238
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 1239
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    move-result v1

    .line 1241
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1243
    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    .line 1244
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1245
    const/4 v0, 0x4

    .line 1247
    .local v0, "requiredApn":I
    :goto_0
    if-ne v0, v5, :cond_5

    .line 1248
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1249
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1241
    .end local v0    # "requiredApn":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1246
    :cond_1
    const/4 v0, 0x5

    .restart local v0    # "requiredApn":I
    goto :goto_0

    .line 1251
    :cond_2
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1252
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1254
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1255
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1269
    .end local v0    # "requiredApn":I
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1270
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit v4

    .line 1235
    return-void

    .line 1258
    .restart local v0    # "requiredApn":I
    :cond_5
    :goto_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1259
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1261
    :cond_6
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1262
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1264
    :cond_7
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1265
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1272
    .end local v0    # "requiredApn":I
    :cond_8
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private checkTetherConnectStateChanged(Z)V
    .locals 0
    .param p1, "up"    # Z

    .prologue
    .line 2261
    if-eqz p1, :cond_0

    .line 2262
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->setCacleDelayCloseHotspot()V

    .line 2259
    :goto_0
    return-void

    .line 2264
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->setDelayCloseHotspot()V

    goto :goto_0
.end method

.method private clearTetheredNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1047
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1048
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_0

    .line 1049
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 1050
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1049
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1051
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 1045
    :cond_0
    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 501
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    .line 503
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 522
    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "Invalid tether type."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 500
    :goto_1
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    .local v0, "isProvisioningRequired":Z
    goto :goto_0

    .line 505
    .end local v0    # "isProvisioningRequired":Z
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(Z)I

    move-result v1

    .line 506
    .local v1, "result":I
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    .line 509
    :cond_1
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_1

    .line 512
    .end local v1    # "result":I
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v1

    .line 513
    .restart local v1    # "result":I
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 514
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    .line 516
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_1

    .line 519
    .end local v1    # "result":I
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    goto :goto_1

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 601
    new-instance v2, Lcom/android/server/connectivity/Tethering$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V

    .line 615
    .local v2, "rr":Landroid/os/ResultReceiver;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 616
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v0, v4}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 617
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 618
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 619
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 620
    return-object v1
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x0

    return v0

    .line 404
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    const/4 v0, 0x2

    return v0

    .line 409
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private isBluetooth(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 394
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 395
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 397
    return v2

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private isIpv6TetheringEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 299
    const-string/jumbo v4, "enable_aosp_v6_tethering"

    .line 298
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 301
    .local v0, "ipv6TetheringEnable":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isTetherProvisioningRequired()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 474
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 475
    const v5, 0x107001a

    .line 474
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "provisionApp":[Ljava/lang/String;
    const-string/jumbo v4, "net.tethering.noprovisioning"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 477
    if-nez v2, :cond_1

    .line 478
    :cond_0
    return v3

    .line 482
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 483
    const-string/jumbo v5, "carrier_config"

    .line 482
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 484
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 486
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 487
    const-string/jumbo v5, "require_entitlement_checks_bool"

    .line 486
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 488
    .local v1, "isEntitlementCheckRequired":Z
    if-nez v1, :cond_2

    .line 489
    return v3

    .line 492
    .end local v1    # "isEntitlementCheckRequired":Z
    :cond_2
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 375
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 376
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 377
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 379
    return v2

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private isWifi(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 385
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 386
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 385
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 388
    return v2

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private maybeLogMessage(Lcom/android/internal/util/State;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .prologue
    .line 1323
    const-string/jumbo v1, "Tethering"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1324
    sget-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1323
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    return-void
.end method

.method private readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z
    .locals 18
    .param p1, "device"    # Landroid/net/wifi/WifiDevice;

    .prologue
    .line 701
    const/4 v12, 0x0

    .line 702
    .local v12, "result":Z
    const/4 v6, 0x0

    .line 706
    .local v6, "fstream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    const-string/jumbo v13, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .local v7, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 708
    .local v8, "in":Ljava/io/DataInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 710
    .local v3, "br":Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_1

    .line 711
    const-string/jumbo v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "fields":[Ljava/lang/String;
    array-length v13, v5

    const/4 v14, 0x3

    if-le v13, v14, :cond_0

    .line 715
    const/4 v13, 0x1

    aget-object v2, v5, v13

    .line 716
    .local v2, "addr":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v9, v5, v13

    .line 717
    .local v9, "ipaddr":Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v11, v5, v13

    .line 719
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 720
    move-object/from16 v0, p1

    iput-object v11, v0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    .line 721
    move-object/from16 v0, p1

    iput-object v9, v0, Landroid/net/wifi/WifiDevice;->IPAddress:Ljava/lang/String;

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    .line 723
    const/4 v12, 0x1

    .line 724
    const-string/jumbo v13, "Tethering"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " device "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ip "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " time "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 732
    .end local v2    # "addr":Ljava/lang/String;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v9    # "ipaddr":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 734
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v6, v7

    .line 739
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v8    # "in":Ljava/io/DataInputStream;
    .end local v10    # "line":Ljava/lang/String;
    :cond_3
    :goto_1
    return v12

    .line 735
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 729
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v8    # "in":Ljava/io/DataInputStream;
    .end local v10    # "line":Ljava/lang/String;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 730
    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "ex":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v13, "Tethering"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "readDeviceNameFromDnsmasq: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 732
    if-eqz v6, :cond_3

    .line 734
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 735
    :catch_2
    move-exception v4

    goto :goto_1

    .line 731
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 732
    :goto_3
    if-eqz v6, :cond_4

    .line 734
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 731
    :cond_4
    :goto_4
    throw v13

    .line 735
    :catch_3
    move-exception v4

    .restart local v4    # "ex":Ljava/io/IOException;
    goto :goto_4

    .line 731
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .local v6, "fstream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 729
    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    .restart local v4    # "ex":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 637
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 638
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    .line 636
    return-void
.end method

.method private runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 576
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 577
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    .line 575
    return-void
.end method

.method private scheduleProvisioningRechecks(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 624
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 625
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string/jumbo v3, "extraSetAlarm"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 630
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    return-void

    .line 631
    :catchall_0
    move-exception v3

    .line 632
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    throw v3
.end method

.method private sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 642
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 643
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    const-string/jumbo v3, "extraRunProvision"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    const-string/jumbo v3, "extraProvisionCallback"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 646
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 649
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    return-void

    .line 650
    :catchall_0
    move-exception v3

    .line 651
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    throw v3
.end method

.method private sendTetherConnectStateChangedBroadcast()V
    .locals 3

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 691
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, "broadcast":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 695
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 697
    const v1, 0x1080742

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 688
    return-void
.end method

.method private sendTetherConnectStateChangedBroadcast(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 2251
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.tether.CONNECTEDSTA_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2252
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2253
    const-string/jumbo v1, "tethring_sta_change_reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2254
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2255
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send tetherConnectedStateChangedBroadcast. reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    return-void
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .locals 1
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    .prologue
    const/4 v0, 0x0

    .line 528
    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 527
    :cond_0
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 15

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v10

    if-nez v10, :cond_0

    return-void

    .line 896
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v1, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .local v0, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v4, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 901
    .local v9, "wifiTethered":Z
    const/4 v8, 0x0

    .line 902
    .local v8, "usbTethered":Z
    const/4 v2, 0x0

    .line 904
    .local v2, "bluetoothTethered":Z
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v11

    .line 905
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v5, v10, :cond_7

    .line 906
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 907
    .local v7, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 908
    .local v6, "iface":Ljava/lang/String;
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    if-eqz v10, :cond_2

    .line 909
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 910
    :cond_2
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_3

    .line 911
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 904
    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 912
    .restart local v6    # "iface":Ljava/lang/String;
    .restart local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_3
    :try_start_1
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_1

    .line 913
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 914
    const/4 v8, 0x1

    .line 920
    :cond_4
    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 915
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 916
    const/4 v9, 0x1

    goto :goto_2

    .line 917
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_4

    .line 918
    const/4 v2, 0x1

    goto :goto_2

    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_7
    monitor-exit v11

    .line 924
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v3, "broadcast":Landroid/content/Intent;
    const/high16 v10, 0x24000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 927
    const-string/jumbo v10, "availableArray"

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 929
    const-string/jumbo v10, "activeArray"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 930
    const-string/jumbo v10, "erroredArray"

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 932
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 934
    const-string/jumbo v10, "Tethering"

    .line 935
    const-string/jumbo v11, "sendTetherStateChangedBroadcast avail=[%s] active=[%s] error=[%s]"

    .line 934
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    .line 936
    const-string/jumbo v13, ","

    invoke-static {v13, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 937
    const-string/jumbo v13, ","

    invoke-static {v13, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 938
    const-string/jumbo v13, ","

    invoke-static {v13, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    .line 934
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    if-eqz v8, :cond_b

    .line 942
    if-nez v9, :cond_8

    if-eqz v2, :cond_a

    .line 943
    :cond_8
    const v10, 0x1080740

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 893
    :cond_9
    :goto_3
    return-void

    .line 945
    :cond_a
    const v10, 0x1080741

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_3

    .line 947
    :cond_b
    if-eqz v9, :cond_d

    .line 948
    if-eqz v2, :cond_c

    .line 949
    const v10, 0x1080740

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_3

    .line 952
    :cond_c
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 953
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 954
    const v11, 0x11200d9

    .line 953
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 956
    const v10, 0x1080742

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_3

    .line 959
    :cond_d
    if-eqz v2, :cond_e

    .line 960
    const v10, 0x108073f

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_3

    .line 962
    :cond_e
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto :goto_3
.end method

.method private sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 581
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string/jumbo v3, "extraProvisionCallback"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 586
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    return-void

    .line 587
    :catchall_0
    move-exception v3

    .line 588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    throw v3
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 546
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 547
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    .line 572
    const/4 v3, 0x5

    .line 554
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 545
    return-void

    .line 548
    :cond_0
    const-string/jumbo v2, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 549
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 548
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 551
    return-void

    .line 549
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCacleDelayCloseHotspot()V
    .locals 3

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2290
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "mConnectedDeviceMap is null, setCacleDelayCloseHotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIntentStopHotspot:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2292
    return-void

    .line 2295
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2296
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2297
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v2, "mConnectedDeviceMap isEmpty, setCacleDelayCloseHotspot"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIntentStopHotspot:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 2288
    return-void

    .line 2295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setDelayCloseHotspot()V
    .locals 7

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2270
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "mConnectedDeviceMap is null, setDelayCloseHotspot fial, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    return-void

    .line 2274
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2276
    const-string/jumbo v0, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDelayCloseHotspot connected devices num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " current time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const-string/jumbo v0, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDelayCloseHotspot connected HOT_SPOT_TIMEOUT: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hot_spot_timeout"

    const v5, 0x493e0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "hot_spot_timeout"

    const v3, 0x493e0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2279
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hot_spot_timeout"

    const v6, 0x493e0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIntentStopHotspot:Landroid/app/PendingIntent;

    .line 2279
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 2268
    return-void

    .line 2283
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setWifiTethering(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 534
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 535
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 537
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 538
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 541
    :cond_0
    const/4 v1, 0x5

    monitor-exit v2

    return v1

    .line 534
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private showTetheredNotification(I)V
    .locals 13
    .param p1, "icon"    # I

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 969
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-nez v8, :cond_0

    .line 970
    return-void

    .line 973
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v0, :cond_2

    .line 974
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-ne v0, p1, :cond_1

    .line 975
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 976
    const v0, 0x1080742

    if-ne p1, v0, :cond_4

    .line 982
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 983
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 982
    const/4 v3, 0x0

    invoke-virtual {v8, v3, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 984
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 987
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 988
    .local v2, "intent":Landroid/content/Intent;
    const v0, 0x1080742

    if-ne p1, v0, :cond_5

    .line 989
    const-string/jumbo v6, "com.android.settings.TetherSettings"

    .line 990
    .local v6, "className":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 993
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 994
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 993
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 994
    const/4 v4, 0x0

    .line 993
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 996
    .local v9, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 997
    .local v10, "r":Landroid/content/res/Resources;
    const v0, 0x10404a1

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1000
    .local v12, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v11

    .line 1002
    .local v11, "size":I
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1003
    const v0, 0x1080742

    if-ne p1, v0, :cond_8

    .line 1004
    if-nez v11, :cond_6

    .line 1005
    const v0, 0x10404a3

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1017
    .local v7, "message":Ljava/lang/CharSequence;
    :goto_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_3

    .line 1018
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    .line 1019
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1020
    const/4 v1, 0x1

    .line 1019
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1021
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 1022
    const v3, 0x106005a

    .line 1021
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 1019
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1023
    const/4 v1, 0x1

    .line 1019
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1024
    const-string/jumbo v1, "status"

    .line 1019
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1026
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1030
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1031
    const v0, 0x1080742

    if-ne p1, v0, :cond_9

    .line 1032
    if-lez v11, :cond_9

    .line 1033
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1034
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1038
    :goto_2
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 1040
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 1041
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1040
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 966
    return-void

    .line 979
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "r":Landroid/content/res/Resources;
    .end local v11    # "size":I
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_4
    return-void

    .line 989
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v6, "com.android.settings.WirelessSettings"

    .restart local v6    # "className":Ljava/lang/String;
    goto/16 :goto_0

    .line 1006
    .restart local v9    # "pi":Landroid/app/PendingIntent;
    .restart local v10    # "r":Landroid/content/res/Resources;
    .restart local v11    # "size":I
    .restart local v12    # "title":Ljava/lang/CharSequence;
    :cond_6
    const/4 v0, 0x1

    if-ne v11, v0, :cond_7

    .line 1007
    const v0, 0x10404a4

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1008
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 1007
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1010
    .end local v7    # "message":Ljava/lang/CharSequence;
    :cond_7
    const v0, 0x10404a5

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1011
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 1010
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1014
    .end local v7    # "message":Ljava/lang/CharSequence;
    :cond_8
    const v0, 0x10404a2

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1036
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private tetherMatchingInterfaces(ZI)V
    .locals 9
    .param p1, "enable"    # Z
    .param p2, "interfaceType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1146
    const-string/jumbo v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tetherMatchingInterfaces("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v3, 0x0

    .line 1150
    .local v3, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1155
    .local v3, "ifaces":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1156
    .local v0, "chosenIface":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1157
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v3, v5

    .line 1158
    .local v2, "iface":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v7

    if-ne v7, p2, :cond_1

    .line 1159
    move-object v0, v2

    .line 1164
    .end local v0    # "chosenIface":Ljava/lang/String;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_2

    .line 1165
    const-string/jumbo v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "could not find iface of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void

    .line 1151
    .local v3, "ifaces":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1152
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Tethering"

    const-string/jumbo v6, "Error listing Interfaces"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    return-void

    .line 1157
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chosenIface":Ljava/lang/String;
    .restart local v2    # "iface":Ljava/lang/String;
    .local v3, "ifaces":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1169
    .end local v0    # "chosenIface":Ljava/lang/String;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v4

    .line 1170
    .local v4, "result":I
    :goto_1
    if-eqz v4, :cond_4

    .line 1171
    const-string/jumbo v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable start or stop tethering on iface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return-void

    .line 1169
    .end local v4    # "result":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 1145
    .restart local v4    # "result":I
    :cond_4
    return-void
.end method

.method private trackNewTetherableInterface(Ljava/lang/String;I)V
    .locals 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "interfaceType"    # I

    .prologue
    .line 2244
    new-instance v8, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 2245
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6TetheringEnabled()Z

    move-result v7

    move-object v1, p1

    move v3, p2

    move-object v6, p0

    .line 2244
    invoke-direct/range {v0 .. v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;Z)V

    invoke-direct {v8, v0}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 2246
    .local v8, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    iget-object v0, v8, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->start()V

    .line 2242
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2157
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v6, "  "

    invoke-direct {v4, p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2158
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 2159
    const-string/jumbo v7, "android.permission.DUMP"

    .line 2158
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 2160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2160
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2161
    const-string/jumbo v7, ", uid="

    .line 2160
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2160
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    return-void

    .line 2166
    :cond_0
    const-string/jumbo v6, "Tethering:"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2168
    const-string/jumbo v6, "mUpstreamIfaceTypes:"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2169
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v7

    .line 2170
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "netType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2171
    .local v2, "netType":Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2169
    .end local v2    # "netType":Ljava/lang/Integer;
    .end local v3    # "netType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2173
    .restart local v3    # "netType$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2175
    const-string/jumbo v6, "Tether state:"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 2178
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2179
    .local v1, "iface":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2180
    .local v5, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2182
    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    packed-switch v6, :pswitch_data_0

    .line 2193
    const-string/jumbo v6, "UnknownState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " - lastError = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2184
    :pswitch_0
    const-string/jumbo v6, "UnavailableState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2187
    :pswitch_1
    const-string/jumbo v6, "AvailableState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2190
    :pswitch_2
    const-string/jumbo v6, "TetheredState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2198
    .end local v1    # "iface":Ljava/lang/String;
    .end local v5    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 2200
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2154
    return-void

    .line 2182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1312
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1313
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    if-eqz v3, :cond_0

    .line 1314
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    monitor-exit v4

    .line 1318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 1310
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 882
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 884
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    .line 885
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 886
    const-string/jumbo v4, ", ignoring"

    .line 885
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 889
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v1

    .line 882
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getTetherConnectedSta()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v0, "TetherConnectedStaList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 674
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 675
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 676
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 677
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiDevice;

    .line 679
    .local v1, "device":Landroid/net/wifi/WifiDevice;
    const-string/jumbo v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTetherConnectedSta: addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 685
    .end local v1    # "device":Landroid/net/wifi/WifiDevice;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1295
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1296
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 1297
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    monitor-exit v4

    .line 1301
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 1293
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1282
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1283
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 1284
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    monitor-exit v4

    .line 1288
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 1280
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    .prologue
    .line 1224
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1225
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 1226
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1227
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1228
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    .line 1232
    return-object v2

    .line 1224
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interfaceAdded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 416
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    .line 417
    .local v0, "interfaceType":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 418
    const-string/jumbo v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not a tetherable iface, ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 419
    return-void

    .line 422
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 423
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_1

    .line 424
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->trackNewTetherableInterface(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 413
    return-void

    .line 426
    :cond_1
    :try_start_2
    const-string/jumbo v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "active iface ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") reported as added, ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 415
    .end local v0    # "interfaceType":I
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 370
    return-void
.end method

.method public interfaceMessageRecevied(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 801
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 802
    return-void

    .line 805
    :cond_0
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interfaceMessageRecevied: message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :try_start_0
    new-instance v0, Landroid/net/wifi/WifiDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiDevice;-><init>(Ljava/lang/String;)V

    .line 810
    .local v0, "device":Landroid/net/wifi/WifiDevice;
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-ne v2, v5, :cond_3

    .line 811
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 819
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast()V

    .line 821
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->checkTetherConnectStateChanged(Z)V

    .line 799
    .end local v0    # "device":Landroid/net/wifi/WifiDevice;
    :cond_1
    :goto_0
    return-void

    .line 823
    .restart local v0    # "device":Landroid/net/wifi/WifiDevice;
    :cond_2
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting poll device info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    new-instance v2, Lcom/android/server/connectivity/Tethering$DnsmasqThread;

    .line 825
    const/16 v3, 0x3e8

    const/16 v4, 0xa

    .line 824
    invoke-direct {v2, p0, v0, v3, v4}, Lcom/android/server/connectivity/Tethering$DnsmasqThread;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiDevice;II)V

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 833
    .end local v0    # "device":Landroid/net/wifi/WifiDevice;
    :catch_0
    move-exception v1

    .line 834
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiDevice IllegalArgument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "device":Landroid/net/wifi/WifiDevice;
    :cond_3
    :try_start_1
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-nez v2, :cond_1

    .line 828
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast()V

    .line 831
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->checkTetherConnectStateChanged(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 433
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interfaceRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 436
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    .line 438
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attempting to remove unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 440
    return-void

    .line 442
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50068

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    .line 443
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 432
    return-void

    .line 434
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 340
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interfaceStatusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 343
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 344
    .local v0, "interfaceType":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    monitor-exit v3

    .line 345
    return-void

    .line 348
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 349
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz p2, :cond_2

    .line 350
    if-nez v1, :cond_1

    .line 351
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->trackNewTetherableInterface(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    .line 337
    return-void

    .line 354
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 355
    :try_start_2
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 356
    const v4, 0x50068

    .line 355
    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    .line 357
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 342
    .end local v0    # "interfaceType":I
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 363
    .restart local v0    # "interfaceType":I
    .restart local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_3
    :try_start_3
    const-string/jumbo v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ignore interface down for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p3, "state"    # I
    .param p4, "error"    # I

    .prologue
    .line 2206
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2207
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2208
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2209
    iput p3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    .line 2210
    iput p4, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    .line 2217
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " notified that it was in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2218
    const-string/jumbo v4, " with error "

    .line 2217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, p1, v2}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2230
    :goto_2
    packed-switch p3, :pswitch_data_0

    .line 2239
    :goto_3
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 2205
    return-void

    .line 2212
    :cond_0
    :try_start_2
    const-string/jumbo v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got notification from stale iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2206
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2225
    .restart local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 2233
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50002

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_3

    .line 2236
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50001

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_3

    .line 2226
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 2230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .locals 3
    .param p1, "ns"    # Landroid/net/NetworkState;

    .prologue
    .line 1507
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1508
    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ifname$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1509
    .local v0, "ifname":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1510
    const/4 v2, 0x1

    return v2

    .line 1514
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "ifname$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setUsbTethering(Z)I
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1190
    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUsbTethering("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1193
    .local v2, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1194
    if-eqz p1, :cond_1

    .line 1195
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v3, :cond_0

    .line 1196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 1198
    .local v0, "ident":J
    const/4 v3, 0x1

    const/4 v5, 0x1

    :try_start_1
    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1200
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "ident":J
    :goto_0
    monitor-exit v4

    .line 1219
    return v6

    .line 1199
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    .line 1200
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1193
    .end local v0    # "ident":J
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1203
    :cond_0
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 1204
    const-string/jumbo v3, "rndis"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v0

    .line 1209
    .restart local v0    # "ident":J
    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_5
    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1211
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1213
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v3, :cond_2

    .line 1214
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1216
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    goto :goto_0

    .line 1210
    :catchall_2
    move-exception v3

    .line 1211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1210
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"    # Z

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 451
    return-void

    .line 454
    :cond_0
    if-eqz p3, :cond_1

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    .line 448
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method

.method public stopTethering(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 462
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 463
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->cancelTetherProvisioningRechecks(I)V

    .line 461
    :cond_0
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 839
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tethering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 841
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 842
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    .line 843
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to Tether an unknown iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 844
    return v5

    .line 848
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    if-eq v1, v5, :cond_1

    .line 849
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to Tether an unavailable iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 850
    const/4 v1, 0x4

    monitor-exit v2

    return v1

    .line 852
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50066

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 853
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 840
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 858
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Untethering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 860
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 861
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    .line 862
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 865
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 866
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to untether an untethered iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 867
    const/4 v1, 0x4

    monitor-exit v2

    return v1

    .line 869
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 870
    const v3, 0x50067

    .line 869
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 871
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 859
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public untetherAll()V
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 877
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 878
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 875
    return-void
.end method

.method updateConfiguration()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 305
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 306
    const v8, 0x1070015

    .line 305
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "tetherableUsbRegexs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 309
    const v8, 0x1070018

    .line 308
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "tetherableBluetoothRegexs":[Ljava/lang/String;
    const-string/jumbo v7, "persist.fst.rate.upgrade.en"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 312
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v7, "bond0"

    aput-object v7, v4, v6

    .line 318
    .local v4, "tetherableWifiRegexs":[Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 319
    const v8, 0x107001b

    .line 318
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 320
    .local v1, "ifaceTypes":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v5, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    array-length v7, v1

    :goto_1
    if-ge v6, v7, :cond_1

    aget v0, v1, v6

    .line 322
    .local v0, "i":I
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 314
    .end local v0    # "i":I
    .end local v1    # "ifaceTypes":[I
    .end local v4    # "tetherableWifiRegexs":[Ljava/lang/String;
    .end local v5    # "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 315
    const v8, 0x1070016

    .line 314
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "tetherableWifiRegexs":[Ljava/lang/String;
    goto :goto_0

    .line 325
    .restart local v1    # "ifaceTypes":[I
    .restart local v5    # "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v7

    .line 326
    :try_start_0
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 327
    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 328
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 329
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 333
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 304
    return-void

    .line 325
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method
