.class public Landroid/content/res/theme/ZsThemeChangeManager;
.super Ljava/lang/Object;
.source "ZsThemeChangeManager.java"


# static fields
.field private static mThemeChangeManager:Landroid/content/res/theme/ZsThemeChangeManager;

.field private static mThemeManager:Landroid/content/res/theme/ZsThemeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/ZsThemeChangeManager;->mCurConfig:Landroid/content/res/Configuration;

    .line 27
    iput-object p1, p0, Landroid/content/res/theme/ZsThemeChangeManager;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/theme/ZsThemeChangeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeChangeManager:Landroid/content/res/theme/ZsThemeChangeManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/content/res/theme/ZsThemeChangeManager;

    invoke-direct {v0, p0}, Landroid/content/res/theme/ZsThemeChangeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeChangeManager:Landroid/content/res/theme/ZsThemeChangeManager;

    .line 20
    invoke-static {p0}, Landroid/content/res/theme/ZsThemeManager;->getInstance(Landroid/content/Context;)Landroid/content/res/theme/ZsThemeManager;

    move-result-object v0

    sput-object v0, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    .line 21
    sget-object v0, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    invoke-static {}, Landroid/content/res/theme/ZsThemeManager;->getThemeZips()V

    .line 23
    :cond_0
    sget-object v0, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeChangeManager:Landroid/content/res/theme/ZsThemeChangeManager;

    return-object v0
.end method


# virtual methods
.method public changeTheme(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x1

    .line 31
    :try_start_0
    const-string/jumbo v1, "changeTheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zipFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v1, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    const-string/jumbo v2, "/data/"

    invoke-virtual {v1, p1, v2}, Landroid/content/res/theme/ZsThemeManager;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    sget-object v1, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    const-string/jumbo v2, "/data/zsTheme"

    invoke-virtual {v1, v2}, Landroid/content/res/theme/ZsThemeManager;->deleteThemeRes(Ljava/lang/String;)Z

    .line 40
    sget-object v1, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    invoke-virtual {v1}, Landroid/content/res/theme/ZsThemeManager;->reNameLetvTheme1ToLetvTheme()V

    .line 41
    invoke-virtual {p0, p2}, Landroid/content/res/theme/ZsThemeChangeManager;->setThemeValues(I)V

    .line 42
    return v4

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    sget-object v1, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    const-string/jumbo v2, "/data/letvTheme1"

    invoke-virtual {v1, v2}, Landroid/content/res/theme/ZsThemeManager;->deleteThemeFile1(Ljava/lang/String;)Z

    .line 36
    sget-object v1, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    invoke-virtual {v1, v4}, Landroid/content/res/theme/ZsThemeManager;->sendChangeThemeBroadCast(I)V

    .line 37
    const/4 v1, 0x0

    return v1
.end method

.method public setThemeValues(I)V
    .locals 4
    .param p1, "themeValues"    # I

    .prologue
    .line 47
    :try_start_0
    sget-object v1, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    const-string/jumbo v2, "/data/zsTheme/wallpaper"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/theme/ZsThemeManager;->setWallpaper(Ljava/lang/String;Z)V

    .line 48
    sget-object v1, Landroid/content/res/theme/ZsThemeChangeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    const-string/jumbo v2, "/data/zsTheme/wallpaper"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/theme/ZsThemeManager;->setWallpaper(Ljava/lang/String;Z)V

    .line 50
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/theme/ZsThemeChangeManager;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
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
