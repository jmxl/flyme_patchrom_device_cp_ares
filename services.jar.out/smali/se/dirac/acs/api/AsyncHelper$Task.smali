.class Lse/dirac/acs/api/AsyncHelper$Task;
.super Landroid/os/AsyncTask;
.source "AsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private final onDone:Lse/dirac/acs/api/AsyncHelper$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/dirac/acs/api/AsyncHelper$Function",
            "<TResult;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lse/dirac/acs/api/AsyncHelper;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AsyncHelper;Lse/dirac/acs/api/AsyncHelper$Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/dirac/acs/api/AsyncHelper$Function",
            "<TResult;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p2, p0, Lse/dirac/acs/api/AsyncHelper$Task;->onDone:Lse/dirac/acs/api/AsyncHelper$Function;

    .line 55
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {v0}, Lse/dirac/acs/api/AsyncHelper;->access$000(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v1, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {v1}, Lse/dirac/acs/api/AsyncHelper;->access$200(Lse/dirac/acs/api/AsyncHelper;)Lse/dirac/acs/api/AsyncHelper$Function;

    move-result-object v1

    invoke-interface {v1, v0}, Lse/dirac/acs/api/AsyncHelper$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {v0}, Lse/dirac/acs/api/AsyncHelper;->access$000(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    return-object v1

    .line 63
    :cond_1
    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {v0}, Lse/dirac/acs/api/AsyncHelper;->access$200(Lse/dirac/acs/api/AsyncHelper;)Lse/dirac/acs/api/AsyncHelper$Function;

    move-result-object v0

    iget-object v1, p0, Lse/dirac/acs/api/AsyncHelper$Task;->this$0:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {v1}, Lse/dirac/acs/api/AsyncHelper;->access$100(Lse/dirac/acs/api/AsyncHelper;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lse/dirac/acs/api/AsyncHelper$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lse/dirac/acs/api/AsyncHelper$Task;->onDone:Lse/dirac/acs/api/AsyncHelper$Function;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/AsyncHelper$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method
