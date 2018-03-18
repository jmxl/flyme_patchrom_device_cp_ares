.class Lse/dirac/android/SystemServiceWatcher$2;
.super Ljava/lang/Object;
.source "SystemServiceWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/android/SystemServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/android/SystemServiceWatcher;


# direct methods
.method constructor <init>(Lse/dirac/android/SystemServiceWatcher;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v0}, Lse/dirac/android/SystemServiceWatcher;->access$000(Lse/dirac/android/SystemServiceWatcher;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    iget-object v1, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v1}, Lse/dirac/android/SystemServiceWatcher;->access$300(Lse/dirac/android/SystemServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lse/dirac/android/SystemServiceWatcher;->access$002(Lse/dirac/android/SystemServiceWatcher;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 44
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v0}, Lse/dirac/android/SystemServiceWatcher;->access$000(Lse/dirac/android/SystemServiceWatcher;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    :goto_0
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v0}, Lse/dirac/android/SystemServiceWatcher;->access$500(Lse/dirac/android/SystemServiceWatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v1}, Lse/dirac/android/SystemServiceWatcher;->access$200(Lse/dirac/android/SystemServiceWatcher;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "foo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v0}, Lse/dirac/android/SystemServiceWatcher;->access$100(Lse/dirac/android/SystemServiceWatcher;)Lse/dirac/android/SystemServiceWatcher$LifeEvents;

    move-result-object v0

    invoke-interface {v0}, Lse/dirac/android/SystemServiceWatcher$LifeEvents;->onBirth()V

    .line 47
    :try_start_0
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v0}, Lse/dirac/android/SystemServiceWatcher;->access$000(Lse/dirac/android/SystemServiceWatcher;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v1}, Lse/dirac/android/SystemServiceWatcher;->access$400(Lse/dirac/android/SystemServiceWatcher;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    :catch_0
    move-exception v0

    .line 50
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$2;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v0, v3}, Lse/dirac/android/SystemServiceWatcher;->access$002(Lse/dirac/android/SystemServiceWatcher;Landroid/os/IBinder;)Landroid/os/IBinder;

    goto :goto_0
.end method
