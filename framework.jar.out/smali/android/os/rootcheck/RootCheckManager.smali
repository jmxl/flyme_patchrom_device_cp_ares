.class public Landroid/os/rootcheck/RootCheckManager;
.super Ljava/lang/Object;
.source "RootCheckManager.java"


# instance fields
.field private final rService:Landroid/os/rootcheck/IRootCheckManager;


# direct methods
.method public constructor <init>(Landroid/os/rootcheck/IRootCheckManager;)V
    .locals 0
    .param p1, "rService"    # Landroid/os/rootcheck/IRootCheckManager;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroid/os/rootcheck/RootCheckManager;->rService:Landroid/os/rootcheck/IRootCheckManager;

    .line 12
    return-void
.end method


# virtual methods
.method public rootCheck()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v1, p0, Landroid/os/rootcheck/RootCheckManager;->rService:Landroid/os/rootcheck/IRootCheckManager;

    invoke-interface {v1}, Landroid/os/rootcheck/IRootCheckManager;->rootCheck()Z

    move-result v0

    .line 18
    .local v0, "result":Z
    return v0
.end method
