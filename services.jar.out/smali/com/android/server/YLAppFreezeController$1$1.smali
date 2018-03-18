.class Lcom/android/server/YLAppFreezeController$1$1;
.super Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/YLAppFreezeController$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/YLAppFreezeController$1;


# direct methods
.method constructor <init>(Lcom/android/server/YLAppFreezeController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/YLAppFreezeController$1;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController$1$1;->this$1:Lcom/android/server/YLAppFreezeController$1;

    invoke-direct {p0}, Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(JJLjava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # J
    .param p3, "arg1"    # J
    .param p5, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 932
    const-string/jumbo v0, "YLAppFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onModeChanged to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-static {p1, p2}, Lcom/android/server/YLAppFreezeController;->-set0(J)J

    .line 930
    return-void
.end method
