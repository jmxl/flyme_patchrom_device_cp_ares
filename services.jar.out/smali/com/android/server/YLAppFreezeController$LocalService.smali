.class final Lcom/android/server/YLAppFreezeController$LocalService;
.super Landroid/os/freeze/YLAppFreezeManagerInternal;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/YLAppFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/YLAppFreezeController;


# direct methods
.method private constructor <init>(Lcom/android/server/YLAppFreezeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/YLAppFreezeController;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController$LocalService;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-direct {p0}, Landroid/os/freeze/YLAppFreezeManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/YLAppFreezeController;Lcom/android/server/YLAppFreezeController$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/YLAppFreezeController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/YLAppFreezeController$LocalService;-><init>(Lcom/android/server/YLAppFreezeController;)V

    return-void
.end method


# virtual methods
.method public updateUidForFreezeChange(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .prologue
    .line 913
    const-string/jumbo v0, "YLAppFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUidForFreezeChange uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$LocalService;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v0}, Lcom/android/server/YLAppFreezeController;->-get1(Lcom/android/server/YLAppFreezeController;)Lcom/android/server/YLAppFreezeController$AppFreezeHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 912
    return-void
.end method
