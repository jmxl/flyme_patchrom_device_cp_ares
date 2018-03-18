.class Lse/dirac/acs/api/AsyncHelper$1;
.super Ljava/lang/Object;
.source "AsyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/dirac/acs/api/AsyncHelper;->execute(Ljava/lang/Object;Lse/dirac/acs/api/AsyncHelper$Function;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AsyncHelper;

.field final synthetic val$b:Lse/dirac/acs/api/AsyncHelper$Function;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AsyncHelper;Lse/dirac/acs/api/AsyncHelper$Function;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lse/dirac/acs/api/AsyncHelper$1;->this$0:Lse/dirac/acs/api/AsyncHelper;

    iput-object p2, p0, Lse/dirac/acs/api/AsyncHelper$1;->val$b:Lse/dirac/acs/api/AsyncHelper$Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lse/dirac/acs/api/AsyncHelper$Task;

    iget-object v1, p0, Lse/dirac/acs/api/AsyncHelper$1;->this$0:Lse/dirac/acs/api/AsyncHelper;

    iget-object v2, p0, Lse/dirac/acs/api/AsyncHelper$1;->val$b:Lse/dirac/acs/api/AsyncHelper$Function;

    invoke-direct {v0, v1, v2}, Lse/dirac/acs/api/AsyncHelper$Task;-><init>(Lse/dirac/acs/api/AsyncHelper;Lse/dirac/acs/api/AsyncHelper$Function;)V

    const/4 v1, 0x0

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lse/dirac/acs/api/AsyncHelper$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 30
    return-void
.end method
