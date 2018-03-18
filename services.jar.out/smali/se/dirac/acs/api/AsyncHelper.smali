.class Lse/dirac/acs/api/AsyncHelper;
.super Ljava/lang/Object;
.source "AsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/acs/api/AsyncHelper$Function;,
        Lse/dirac/acs/api/AsyncHelper$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        "Argument:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "se.dirac.acs-api"


# instance fields
.field private currentArg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TArgument;"
        }
    .end annotation
.end field

.field private final onWork:Lse/dirac/acs/api/AsyncHelper$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/dirac/acs/api/AsyncHelper$Function",
            "<TArgument;TResult;>;"
        }
    .end annotation
.end field

.field private requests:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AsyncHelper$Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/dirac/acs/api/AsyncHelper$Function",
            "<TArgument;TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    .line 13
    iput-object p1, p0, Lse/dirac/acs/api/AsyncHelper;->onWork:Lse/dirac/acs/api/AsyncHelper$Function;

    .line 14
    return-void
.end method

.method static synthetic access$000(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lse/dirac/acs/api/AsyncHelper;->getWork()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper;->currentArg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lse/dirac/acs/api/AsyncHelper;)Lse/dirac/acs/api/AsyncHelper$Function;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper;->onWork:Lse/dirac/acs/api/AsyncHelper$Function;

    return-object v0
.end method

.method private getWork()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TArgument;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    iget-object v2, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    monitor-enter v2

    .line 42
    :try_start_0
    iget-object v3, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 45
    :goto_0
    iget-object v3, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_1

    :goto_1
    const/4 v1, 0x0

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    .line 47
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    monitor-exit v2

    return-object v0

    :cond_0
    const-string/jumbo v3, "se.dirac.acs-api"

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Service push settings overload, ignoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requests, keeping the newest."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 45
    goto :goto_1

    .line 47
    :cond_2
    :try_start_1
    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper;->currentArg:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method execute(Ljava/lang/Object;Lse/dirac/acs/api/AsyncHelper$Function;Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TArgument;",
            "Lse/dirac/acs/api/AsyncHelper$Function",
            "<TResult;",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 20
    iget-object v1, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    monitor-enter v1

    .line 21
    :try_start_0
    iput-object p1, p0, Lse/dirac/acs/api/AsyncHelper;->currentArg:Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    iget-object v2, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lse/dirac/acs/api/AsyncHelper;->requests:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v0, Lse/dirac/acs/api/AsyncHelper$1;

    invoke-direct {v0, p0, p2}, Lse/dirac/acs/api/AsyncHelper$1;-><init>(Lse/dirac/acs/api/AsyncHelper;Lse/dirac/acs/api/AsyncHelper$Function;)V

    .line 32
    if-nez p3, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 36
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 23
    :cond_0
    :try_start_1
    monitor-exit v1

    return v3

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 33
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
