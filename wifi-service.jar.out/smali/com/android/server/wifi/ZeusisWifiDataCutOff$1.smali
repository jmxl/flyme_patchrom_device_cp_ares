.class Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;
.super Landroid/content/BroadcastReceiver;
.source "ZeusisWifiDataCutOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ZeusisWifiDataCutOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6, v8}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z

    .line 89
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-virtual {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->startDataStallAlarm()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6, v7}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z

    .line 93
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-virtual {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->stopDataStallAlarm()V

    goto :goto_0

    .line 94
    :cond_2
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 96
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 97
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v2

    .line 98
    .local v2, "mIsOldWifiConnected":Z
    iget-object v8, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    :goto_1
    invoke-static {v8, v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set2(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z

    .line 99
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v6

    if-eq v2, v6, :cond_0

    .line 101
    const-string/jumbo v6, "ZeusisWifiDataCutOff"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v9}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-virtual {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->startDataStallAlarm()V

    goto :goto_0

    :cond_3
    move v6, v7

    .line 98
    goto :goto_1

    .line 105
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-virtual {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->stopDataStallAlarm()V

    .line 106
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6, v7}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z

    .line 107
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6, v7}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set5(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z

    .line 108
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set6(Lcom/android/server/wifi/ZeusisWifiDataCutOff;J)J

    .line 109
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get2(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 112
    .end local v2    # "mIsOldWifiConnected":Z
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string/jumbo v6, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 113
    const-string/jumbo v6, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/WifiDisplayStatus;

    .line 114
    .local v4, "status":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v4, :cond_8

    .line 115
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 116
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get3(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)I

    move-result v6

    if-nez v6, :cond_0

    .line 117
    const-string/jumbo v6, "ZeusisWifiDataCutOff"

    const-string/jumbo v7, "WifiDisplay connected, stopDataStallAlarm"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6, v9}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set4(Lcom/android/server/wifi/ZeusisWifiDataCutOff;I)I

    .line 119
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-virtual {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 121
    :cond_6
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v6

    if-nez v6, :cond_0

    .line 122
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get3(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 123
    const-string/jumbo v6, "ZeusisWifiDataCutOff"

    const-string/jumbo v8, "WifiDisplay disconnected, startDataStallAlarm if Wifi connected"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6, v7}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set4(Lcom/android/server/wifi/ZeusisWifiDataCutOff;I)I

    .line 125
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 126
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-virtual {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->startDataStallAlarm()V

    goto/16 :goto_0

    .line 128
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-virtual {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 132
    :cond_8
    const-string/jumbo v6, "ZeusisWifiDataCutOff"

    const-string/jumbo v7, "Broadcast Receiver: DisplayManager.ACTION_WIFI_DISPLAY_STATUS_CHANGED, WifiDisplayStatus = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    .end local v4    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_9
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 135
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 136
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_a

    .line 137
    return-void

    .line 139
    :cond_a
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    const-string/jumbo v6, "ZeusisWifiDataCutOff"

    const-string/jumbo v7, "Set mIsRoutingComplete = true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6, v8}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z

    goto/16 :goto_0

    .line 143
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_b
    const-string/jumbo v6, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    const-string/jumbo v6, "newState"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    .line 145
    .local v5, "supplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v6, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v6, v8}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set5(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z

    .line 147
    iget-object v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    iget-object v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 148
    const-string/jumbo v6, "ZeusisWifiDataCutOff"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wifi roaming, set mRoamProcess = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v8}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get6(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
