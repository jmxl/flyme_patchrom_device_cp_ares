.class Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;
.super Landroid/content/BroadcastReceiver;
.source "DpmNsrmBackgroundEventHdlr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get5(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    const-string/jumbo v2, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 140
    if-nez v2, :cond_1

    .line 142
    :cond_0
    const-string/jumbo v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 140
    if-eqz v2, :cond_3

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 151
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Ljava/util/Timer;)Ljava/util/Timer;

    .line 152
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$1;

    invoke-direct {v1, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$1;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;)V

    .line 157
    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1388

    .line 152
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 135
    :cond_2
    :goto_0
    return-void

    .line 159
    :cond_3
    const-string/jumbo v2, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto :goto_0

    .line 163
    :cond_4
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 166
    .local v9, "extras":Landroid/os/Bundle;
    if-nez v9, :cond_5

    .line 169
    return-void

    .line 171
    :cond_5
    const-string/jumbo v2, "state"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 172
    .local v10, "headphonesConnected":I
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    if-nez v10, :cond_6

    :goto_1
    const/4 v1, 0x4

    invoke-static {v2, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    .line 175
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "headphonesConnected":I
    :cond_7
    const-string/jumbo v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 177
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .line 178
    const-string/jumbo v2, "state"

    .line 177
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set5(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 179
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get4(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto :goto_0

    .line 181
    :cond_8
    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 184
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-nez v9, :cond_9

    .line 187
    return-void

    .line 189
    :cond_9
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const-string/jumbo v1, "connected"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set6(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 190
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get6(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get7(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get6(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 192
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get6(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set7(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    .line 195
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_a
    const-string/jumbo v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 198
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-nez v9, :cond_b

    .line 202
    return-void

    .line 204
    :cond_b
    const-string/jumbo v2, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 205
    .local v6, "BluetoothConnected":I
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .line 206
    if-ne v6, v4, :cond_c

    move v2, v1

    .line 205
    :goto_2
    invoke-static {v3, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set1(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 208
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get1(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v2

    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v3}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 210
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    if-ne v6, v4, :cond_d

    :goto_3
    invoke-static {v2, v5, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 212
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get1(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    :cond_c
    move v2, v0

    .line 206
    goto :goto_2

    :cond_d
    move v1, v0

    .line 211
    goto :goto_3

    .line 215
    .end local v6    # "BluetoothConnected":I
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_e
    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 218
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-nez v9, :cond_f

    .line 221
    return-void

    .line 223
    :cond_f
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 224
    .local v7, "BluetoothDisconnected":I
    const/16 v1, 0xa

    if-ne v7, v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1, v5, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 227
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set1(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 228
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get1(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    .line 231
    .end local v7    # "BluetoothDisconnected":I
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_10
    const-string/jumbo v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 234
    const-string/jumbo v2, "networkInfo"

    .line 233
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    .line 236
    .local v11, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v11, :cond_11

    .line 241
    return-void

    .line 244
    :cond_11
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 247
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get8(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set8(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 250
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/16 v2, 0xd

    invoke-static {v0, v2, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0

    .line 256
    :cond_12
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get8(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set8(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 259
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/16 v2, 0xd

    invoke-static {v1, v2, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0

    .line 263
    .end local v11    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_13
    const-string/jumbo v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 265
    const-string/jumbo v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recieved idle intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap3(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    goto/16 :goto_0

    .line 268
    :cond_14
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 270
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto/16 :goto_0

    .line 272
    :cond_15
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 275
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 276
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Ljava/util/Timer;)Ljava/util/Timer;

    .line 277
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$2;

    invoke-direct {v1, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$2;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;)V

    .line 282
    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1388

    .line 277
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 284
    :cond_16
    const-string/jumbo v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 286
    const-string/jumbo v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recieved idleLight Intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-get3(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 288
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap3(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    goto/16 :goto_0

    .line 292
    :cond_17
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    const-string/jumbo v2, "DPM:NSRM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received phone state Intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, "state":Ljava/lang/String;
    const-string/jumbo v2, "DPM:NSRM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current phone state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 299
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0

    .line 303
    :cond_18
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0
.end method
