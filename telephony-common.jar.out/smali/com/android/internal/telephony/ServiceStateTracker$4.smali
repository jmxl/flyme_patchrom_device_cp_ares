.class Lcom/android/internal/telephony/ServiceStateTracker$4;
.super Landroid/telephony/PhoneStateListener;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOtherPhoneStateListener.onCallStateChanged: oldSate ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1466
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:I

    .line 1465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1466
    const-string/jumbo v2, ", newState="

    .line 1465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1468
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:I

    if-nez v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get1(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    .line 1468
    if-eqz v0, :cond_1

    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iput p1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:I

    .line 1471
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:I

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iput p1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:I

    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    goto :goto_0
.end method
