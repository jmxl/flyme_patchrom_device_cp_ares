.class Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;
.super Lcom/android/server/net/BaseNetworkObserver;
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
    .line 160
    iput-object p1, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v0, "ZeusisSoftApLimitDate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiLimitReached: enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v0}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get4(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string/jumbo v0, "ZeusisSoftApLimitDate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiLimitReached: enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v0}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get6(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v1, v0, :cond_0

    .line 168
    const-string/jumbo v0, "ZeusisSoftApLimitDate"

    const-string/jumbo v1, "ZeusisSoftApLimitDate close softap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v0}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get0(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-set2(Lcom/android/server/wifi/ZeusisSoftApLimitDate;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/ZeusisSoftApLimitDate$2;->this$0:Lcom/android/server/wifi/ZeusisSoftApLimitDate;

    invoke-static {v0}, Lcom/android/server/wifi/ZeusisSoftApLimitDate;->-get5(Lcom/android/server/wifi/ZeusisSoftApLimitDate;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 162
    :cond_0
    return-void
.end method
