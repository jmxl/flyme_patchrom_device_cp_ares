.class Lse/dirac/android/SystemServiceWatcher$1;
.super Ljava/lang/Object;
.source "SystemServiceWatcher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 28
    iput-object p1, p0, Lse/dirac/android/SystemServiceWatcher$1;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$1;->this$0:Lse/dirac/android/SystemServiceWatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lse/dirac/android/SystemServiceWatcher;->access$002(Lse/dirac/android/SystemServiceWatcher;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 32
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$1;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v0}, Lse/dirac/android/SystemServiceWatcher;->access$100(Lse/dirac/android/SystemServiceWatcher;)Lse/dirac/android/SystemServiceWatcher$LifeEvents;

    move-result-object v0

    invoke-interface {v0}, Lse/dirac/android/SystemServiceWatcher$LifeEvents;->onDeath()V

    .line 33
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher$1;->this$0:Lse/dirac/android/SystemServiceWatcher;

    invoke-static {v0}, Lse/dirac/android/SystemServiceWatcher;->access$200(Lse/dirac/android/SystemServiceWatcher;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    return-void
.end method
