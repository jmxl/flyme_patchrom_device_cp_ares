.class public final Landroid/os/freeze/YLAppFreezManager;
.super Ljava/lang/Object;
.source "YLAppFreezManager.java"


# static fields
.field public static final RESTRACT_ALARM:I = 0x4

.field public static final RESTRACT_ALRM:I = 0x4

.field public static final RESTRACT_LOCATION:I = 0x20

.field public static final RESTRACT_MOBILE:I = 0x2

.field public static final RESTRACT_PROCESS:I = 0x10

.field public static final RESTRACT_WAKELOCK:I = 0x8

.field public static final RESTRACT_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "YLAppFreezManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/freeze/IYLAppFreezeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/freeze/IYLAppFreezeController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/freeze/IYLAppFreezeController;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Landroid/os/freeze/YLAppFreezManager;->mService:Landroid/os/freeze/IYLAppFreezeController;

    .line 58
    iput-object p1, p0, Landroid/os/freeze/YLAppFreezManager;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public addUidtoRemoteViewUnfreezeList(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezManager;->mService:Landroid/os/freeze/IYLAppFreezeController;

    invoke-interface {v1, p1}, Landroid/os/freeze/IYLAppFreezeController;->addUidtoRemoteViewUnfreezeList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkIsAppRestricted(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 145
    :try_start_0
    iget-object v2, p0, Landroid/os/freeze/YLAppFreezManager;->mService:Landroid/os/freeze/IYLAppFreezeController;

    invoke-interface {v2, p1, p2}, Landroid/os/freeze/IYLAppFreezeController;->getFlagsOfRestriction(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public freezeApp(ILjava/lang/String;I)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezManager;->mService:Landroid/os/freeze/IYLAppFreezeController;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/freeze/IYLAppFreezeController;->freezeApp(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isRemoteViewUnfreezeListContainUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezManager;->mService:Landroid/os/freeze/IYLAppFreezeController;

    invoke-interface {v1, p1}, Landroid/os/freeze/IYLAppFreezeController;->isRemoteViewUnfreezeListContainUid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSpecificScene(I)Z
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezManager;->mService:Landroid/os/freeze/IYLAppFreezeController;

    invoke-interface {v1, p1}, Landroid/os/freeze/IYLAppFreezeController;->isSpecificScene(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unfreezeApp(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezManager;->mService:Landroid/os/freeze/IYLAppFreezeController;

    invoke-interface {v1, p1, p2}, Landroid/os/freeze/IYLAppFreezeController;->unfreezeApp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unfreezeAppFully(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezManager;->mService:Landroid/os/freeze/IYLAppFreezeController;

    invoke-interface {v1, p1, p2}, Landroid/os/freeze/IYLAppFreezeController;->unfreezeAppFully(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
