.class Lcom/android/server/am/AppOomService$1;
.super Ljava/lang/Object;
.source "AppOomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppOomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppOomService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppOomService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppOomService;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/am/AppOomService$1;->this$0:Lcom/android/server/am/AppOomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Lcom/android/server/am/AppOomService$1;->this$0:Lcom/android/server/am/AppOomService;

    monitor-enter v2

    .line 57
    :try_start_0
    new-instance v0, Lcom/android/server/am/AppOomService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppOomService$1$1;-><init>(Lcom/android/server/am/AppOomService$1;)V

    .line 63
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 55
    return-void

    .line 56
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
