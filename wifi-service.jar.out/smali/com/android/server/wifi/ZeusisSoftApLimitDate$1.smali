.class Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;
.super Landroid/content/BroadcastReceiver;
.source "ZeusisSoftApLimitDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ZeusisSoftApLimitDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0xb

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 63
    const-string/jumbo v7, "wifi_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 64
    .local v6, "wifiApState":I
    const-string/jumbo v7, "ZeusisSoftApLimitDate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "WIFI_AP_STATE_CHANGED: wifiApState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-ne v6, v11, :cond_1

    .line 68
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get0(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 69
    const-string/jumbo v8, "zeusis_wifi_softap_traffic_control"

    const/16 v9, 0x64

    .line 68
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 70
    .local v5, "quotabytes":I
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    iget-object v8, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-virtual {v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->getActiveMobileNetworkInterface()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-set0(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 74
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get1(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v9}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v9

    mul-int/lit16 v10, v5, 0x400

    mul-int/lit16 v10, v10, 0x400

    invoke-interface {v7, v8, v9, v10}, Landroid/os/INetworkManagementService;->setIfacePairTetherQuota(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bw_TQ_wlan0_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v9}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-set1(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    const-string/jumbo v7, "ZeusisSoftApLimitDate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "WIFI_AP_STATE_ENABLED Start to setInterfaceQuota, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v9}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get4(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-set3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Z)Z

    .line 59
    .end local v5    # "quotabytes":I
    .end local v6    # "wifiApState":I
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local v6    # "wifiApState":I
    :cond_1
    if-ne v6, v10, :cond_0

    .line 81
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get7(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get1(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v9}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/os/INetworkManagementService;->removeIfacePairTetherQuota(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v7, "ZeusisSoftApLimitDate"

    const-string/jumbo v8, "WIFI_AP_STATE_DISABLED Start to removeInterfaceQuota"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-set3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "ZeusisSoftApLimitDate"

    const-string/jumbo v8, "Failed to operate quota"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "wifiApState":I
    :cond_2
    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 92
    const-string/jumbo v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 93
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_3

    .line 94
    const-string/jumbo v7, "ZeusisSoftApLimitDate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mIntentReceiver: NetworkInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_3
    if-eqz v4, :cond_4

    :try_start_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_4

    .line 98
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_4

    .line 100
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get6(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v7

    if-ne v11, v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get7(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get0(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 103
    const-string/jumbo v8, "zeusis_wifi_softap_traffic_control"

    const/16 v9, 0x64

    .line 102
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 105
    .restart local v5    # "quotabytes":I
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-wrap0(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 106
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 107
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v3, :cond_0

    .line 109
    const-string/jumbo v7, "ZeusisSoftApLimitDate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mIntentReceiver: getInterfaceName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-set0(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 114
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get1(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v9}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v9

    mul-int/lit16 v10, v5, 0x400

    mul-int/lit16 v10, v10, 0x400

    invoke-interface {v7, v8, v9, v10}, Landroid/os/INetworkManagementService;->setIfacePairTetherQuota(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bw_TQ_wlan0_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v9}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-set1(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    const-string/jumbo v7, "ZeusisSoftApLimitDate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CONNECTIVITY_ACTION Start to setInterfaceQuota, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v9}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get4(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-set3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 132
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "linkProperties":Landroid/net/LinkProperties;
    .end local v5    # "quotabytes":I
    :catch_1
    move-exception v2

    .line 133
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "ZeusisSoftApLimitDate"

    const-string/jumbo v8, "Failed to operate quota"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 122
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_0

    .line 123
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_0

    .line 125
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get7(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v7}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get1(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v9}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/os/INetworkManagementService;->removeIfacePairTetherQuota(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v7, "ZeusisSoftApLimitDate"

    const-string/jumbo v8, "CONNECTIVITY_ACTION Start to removeInterfaceQuota"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v7, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$1;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-set3(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
