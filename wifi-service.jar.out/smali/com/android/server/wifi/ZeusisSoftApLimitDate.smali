.class public Lcom/android/server/wifi/ZeusisSoftApLimitDate;
.super Ljava/lang/Object;
.source "ZeusisSoftApLimitDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;,
        Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ZeusisSoftApLimitDate"


# instance fields
.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInterfaceName:Ljava/lang/String;

.field private mMobileInterface:Ljava/lang/String;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mQuotaInterface:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private setinterface:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mMobileInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mQuotaInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->setinterface:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mMobileInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mQuotaInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->setinterface:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/net/ConnectivityManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/INetworkManagementService;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "NwService"    # Landroid/os/INetworkManagementService;
    .param p4, "InterfaceName"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->setinterface:Z

    .line 28
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mMobileInterface:Ljava/lang/String;

    .line 29
    const-string/jumbo v2, "bw_TQ_wlan0_rmnet_data0"

    iput-object v2, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mQuotaInterface:Ljava/lang/String;

    .line 56
    new-instance v2, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;-><init>(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)V

    iput-object v2, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v2, Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;-><init>(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)V

    .line 159
    iput-object v2, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 140
    iput-object p1, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 142
    iput-object p3, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mNwService:Landroid/os/INetworkManagementService;

    .line 143
    iput-object p4, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mInterfaceName:Ljava/lang/String;

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void

    .line 147
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ZeusisSoftApLimitDate"

    const-string/jumbo v3, "registerObserver failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public getActiveMobileNetworkInterface()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 37
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 38
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 39
    const-string/jumbo v3, "ZeusisSoftApLimitDate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getActiveMobileNetworkInterface: NetworkInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 42
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 43
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v2, :cond_1

    .line 45
    const-string/jumbo v3, "ZeusisSoftApLimitDate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getActiveMobileNetworkInterface: getInterfaceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 49
    .end local v2    # "linkProperties":Landroid/net/LinkProperties;
    :cond_1
    return-object v6
.end method
