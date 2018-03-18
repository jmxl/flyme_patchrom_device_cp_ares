.class final Lcom/android/server/usage/UsageStatsService$Receiver;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/app/usage/IYulongAppStatusListener;

.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/IYulongAppStatusListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "listener"    # Landroid/app/usage/IYulongAppStatusListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->mListener:Landroid/app/usage/IYulongAppStatusListener;

    .line 276
    invoke-interface {p2}, Landroid/app/usage/IYulongAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->mKey:Ljava/lang/Object;

    .line 274
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-get2(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0, p0}, Lcom/android/server/usage/UsageStatsService;->-wrap5(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$Receiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 280
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getListener()Landroid/app/usage/IYulongAppStatusListener;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->mListener:Landroid/app/usage/IYulongAppStatusListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->mListener:Landroid/app/usage/IYulongAppStatusListener;

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
