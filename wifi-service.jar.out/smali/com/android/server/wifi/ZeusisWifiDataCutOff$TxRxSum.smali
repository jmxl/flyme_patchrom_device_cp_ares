.class Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;
.super Ljava/lang/Object;
.source "ZeusisWifiDataCutOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ZeusisWifiDataCutOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field final synthetic this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

.field public txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->reset()V

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/ZeusisWifiDataCutOff;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ZeusisWifiDataCutOff;
    .param p2, "txPkts"    # J
    .param p4, "rxPkts"    # J

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-wide p2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->txPkts:J

    .line 164
    iput-wide p4, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->rxPkts:J

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/ZeusisWifiDataCutOff;
    .param p2, "sum"    # Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->this$0:Lcom/android/server/wifi/ZeusisWifiDataCutOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iget-wide v0, p2, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->txPkts:J

    .line 169
    iget-wide v0, p2, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->rxPkts:J

    .line 167
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 173
    iput-wide v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->txPkts:J

    .line 174
    iput-wide v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->rxPkts:J

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->txPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTxRxSum()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Landroid/net/TrafficStats;->getWifiTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->txPkts:J

    .line 184
    invoke-static {}, Landroid/net/TrafficStats;->getWifiTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->rxPkts:J

    .line 182
    return-void
.end method
