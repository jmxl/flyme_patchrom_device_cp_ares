.class Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;
.super Ljava/lang/Object;
.source "ZeusisWifiDataCutOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ZeusisWifiDataCutOff;->onDataStallAlarm()V
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
    .line 316
    iput-object p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0xfa0

    const/4 v8, 0x0

    .line 319
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-wrap2(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)V

    .line 321
    const/4 v2, 0x5

    .line 323
    .local v2, "hangWatchdogTrigger":I
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-wrap0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 324
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get7(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)J

    move-result-wide v4

    const-wide/16 v6, 0x5

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get2(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 325
    :cond_0
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    const-string/jumbo v4, "May be datacutoff detect!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get2(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set3(Lcom/android/server/wifi/ZeusisWifiDataCutOff;I)I

    .line 329
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get5(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get4(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 348
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get5(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 349
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    const-string/jumbo v4, "not recover again, datacutoff recover recently within 3600 secs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    :goto_0
    return-void

    .line 330
    :cond_4
    const/4 v1, -0x1

    .line 331
    .local v1, "curRssi":I
    const/4 v0, -0x1

    .line 332
    .local v0, "curFreq":I
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get8(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 333
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get8(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 334
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "datacutoff detect when RSSI is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "datacutoff detect when FREQ is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v3, -0x56

    if-le v1, v3, :cond_6

    if-gt v0, v9, :cond_6

    .line 339
    :cond_5
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    const-string/jumbo v4, "datacutoff detect, ping gateway first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-wrap1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 341
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    const-string/jumbo v4, "datacutoff detect and ping gateway fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    iget-object v4, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 337
    :cond_6
    const/16 v3, -0x51

    if-le v1, v3, :cond_7

    if-gt v0, v9, :cond_5

    .line 345
    :cond_7
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    const-string/jumbo v4, "The signal is poor(<-85), it would impact perf, do nothing here"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    .end local v0    # "curFreq":I
    .end local v1    # "curRssi":I
    :cond_8
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDataStallAlarm: Sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v5}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get7(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 353
    const-string/jumbo v5, " pkts since last received, < watchdogTrigger="

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)I

    move-result v3

    if-lez v3, :cond_3

    .line 355
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-static {v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-get1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->-set3(Lcom/android/server/wifi/ZeusisWifiDataCutOff;I)I

    goto/16 :goto_0

    .line 358
    :cond_9
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    const-string/jumbo v4, "onDataStallAlarm: not allow to run recover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
