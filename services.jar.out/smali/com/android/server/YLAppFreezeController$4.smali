.class Lcom/android/server/YLAppFreezeController$4;
.super Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/YLAppFreezeController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/YLAppFreezeController;


# direct methods
.method constructor <init>(Lcom/android/server/YLAppFreezeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/YLAppFreezeController;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController$4;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStatusChange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v3, -0x1

    .line 215
    const-string/jumbo v0, "YLAppFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppStatusChange pkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 218
    const-string/jumbo v0, "YLAppFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUidByPkgName pkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eq p3, v3, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$4;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v0, p3, p1}, Lcom/android/server/YLAppFreezeController;->-wrap13(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 225
    const-string/jumbo v0, "YLAppFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUidByPkgName pkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eq p3, v3, :cond_0

    goto :goto_0
.end method
