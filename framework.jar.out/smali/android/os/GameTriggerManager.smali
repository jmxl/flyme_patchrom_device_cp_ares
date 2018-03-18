.class public Landroid/os/GameTriggerManager;
.super Ljava/lang/Object;
.source "GameTriggerManager.java"


# instance fields
.field private mService:Landroid/app/IGameTriggerManager;


# direct methods
.method public constructor <init>(Landroid/app/IGameTriggerManager;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IGameTriggerManager;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    const-string/jumbo v0, "GameTriggerManager"

    const-string/jumbo v1, "init game trigger service = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    iput-object p1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    .line 18
    return-void
.end method


# virtual methods
.method public add(Landroid/app/GameOps;)V
    .locals 2
    .param p1, "gameOps"    # Landroid/app/GameOps;

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1}, Landroid/app/IGameTriggerManager;->add(Landroid/app/GameOps;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/GameOps;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "gameOpss":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1}, Landroid/app/IGameTriggerManager;->addList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getDisplay(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgActivityName"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1}, Landroid/app/IGameTriggerManager;->getDisplay(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    const/4 v1, 0x0

    return v1
.end method

.method public isInWhiteListed(Landroid/app/GameOps;)Z
    .locals 2
    .param p1, "gameOps"    # Landroid/app/GameOps;

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1}, Landroid/app/IGameTriggerManager;->isInWhiteListedAsObject(Landroid/app/GameOps;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    const/4 v1, 0x0

    return v1
.end method

.method public isInWhiteListed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgActivityName"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1}, Landroid/app/IGameTriggerManager;->isInWhiteListedAsPkgAct(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    const/4 v1, 0x0

    return v1
.end method

.method public isInWhiteListed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IGameTriggerManager;->isInWhiteListed(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    return v1
.end method

.method public isInWhiteListedAsObject(Landroid/app/GameOps;)Z
    .locals 1
    .param p1, "gameOps"    # Landroid/app/GameOps;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/os/GameTriggerManager;->isInWhiteListed(Landroid/app/GameOps;)Z

    move-result v0

    return v0
.end method

.method public isInWhiteListedAsPkgAct(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgActivityName"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Landroid/os/GameTriggerManager;->isInWhiteListed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgActivityName"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1}, Landroid/app/IGameTriggerManager;->removeAsPkgAct(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IGameTriggerManager;->remove(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAll()V
    .locals 2

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1}, Landroid/app/IGameTriggerManager;->removeAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAsPkgAct(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgActivityName"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/os/GameTriggerManager;->remove(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public save(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/GameOps;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "gameOpss":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1}, Landroid/app/IGameTriggerManager;->save(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public update(Landroid/app/GameOps;)V
    .locals 2
    .param p1, "gameOps"    # Landroid/app/GameOps;

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Landroid/os/GameTriggerManager;->mService:Landroid/app/IGameTriggerManager;

    invoke-interface {v1, p1}, Landroid/app/IGameTriggerManager;->update(Landroid/app/GameOps;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
