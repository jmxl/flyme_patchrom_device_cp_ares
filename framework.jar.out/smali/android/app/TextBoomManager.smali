.class public Landroid/app/TextBoomManager;
.super Ljava/lang/Object;
.source "TextBoomManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/app/ITextBoomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Landroid/app/TextBoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/TextBoomManager;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ITextBoomManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/ITextBoomManager;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/app/TextBoomManager;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Landroid/app/TextBoomManager;->mService:Landroid/app/ITextBoomManager;

    .line 35
    return-void
.end method


# virtual methods
.method public adaptActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Landroid/app/TextBoomManager;->mService:Landroid/app/ITextBoomManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/ITextBoomManager;->adaptActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableAdaptPkg(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Landroid/app/TextBoomManager;->mService:Landroid/app/ITextBoomManager;

    invoke-interface {v1, p1}, Landroid/app/ITextBoomManager;->disableAdaptPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAdaptActivityFlag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/app/TextBoomManager;->mService:Landroid/app/ITextBoomManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/app/ITextBoomManager;->getAdaptActivityFlag(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAdaptInputId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Landroid/app/TextBoomManager;->mService:Landroid/app/ITextBoomManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ITextBoomManager;->getAdaptInputId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAdaptPkgs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/AdaptPkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/app/TextBoomManager;->mService:Landroid/app/ITextBoomManager;

    invoke-interface {v1}, Landroid/app/ITextBoomManager;->getAdaptPkgs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAdapted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/app/TextBoomManager;->mService:Landroid/app/ITextBoomManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ITextBoomManager;->isAdapted(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAdaptActivityFlag(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Landroid/app/TextBoomManager;->mService:Landroid/app/ITextBoomManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/ITextBoomManager;->setAdaptActivityFlag(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAdaptActivityFlag(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "flag"    # Z
    .param p4, "isMinor"    # Z

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Landroid/app/TextBoomManager;->mService:Landroid/app/ITextBoomManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/ITextBoomManager;->setAdaptActivityFlag(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
