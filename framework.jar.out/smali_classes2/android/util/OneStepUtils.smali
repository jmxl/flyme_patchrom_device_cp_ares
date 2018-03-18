.class public Landroid/util/OneStepUtils;
.super Ljava/lang/Object;
.source "OneStepUtils.java"


# static fields
.field public static final BIGBANG_LONG_PRESS_TIMEOUT:I = 0x64

.field public static final BIG_BANG:Ljava/lang/String; = "com.journeyui.textboom"

.field private static final ID_SPLITER:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "OneStepUtils"

.field public static final TENCENT_MM_MAHOR:Ljava/lang/String; = "major"

.field public static final TENCENT_MM_MINOR:Ljava/lang/String; = "minor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentRunningApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    .line 90
    const/4 v8, 0x0

    .line 91
    .local v8, "packageName":Ljava/lang/String;
    const-string/jumbo v10, "activity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 92
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v11, v11}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6

    .line 94
    .local v6, "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 95
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 96
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 97
    .end local v8    # "packageName":Ljava/lang/String;
    .local v4, "j":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 99
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 101
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000

    .line 100
    invoke-virtual {v9, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 102
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    :try_start_1
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 103
    .local v8, "packageName":Ljava/lang/String;
    const-string/jumbo v10, "OneStepUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " -----> Current Running Application name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    .line 104
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v10, "OneStepUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " -----> Application name not found : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v8

    .line 104
    .end local v4    # "j":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "j":I
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_1
.end method

.method static getPackageContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 149
    .local v2, "packageContext":Landroid/content/Context;
    const/4 v3, 0x3

    .line 148
    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 155
    .end local v2    # "packageContext":Landroid/content/Context;
    :goto_0
    return-object v2

    .line 152
    .restart local v2    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static getVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 160
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 161
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 162
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v4

    .line 166
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public static isBigBang(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-static {p0}, Landroid/util/OneStepUtils;->getCurrentRunningApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "running":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 115
    return v2

    .line 117
    :cond_0
    const-string/jumbo v1, "com.journeyui.textboom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x1

    return v1

    .line 121
    :cond_1
    return v2
.end method

.method public static isInMultiWindowMode(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 125
    invoke-static {p0}, Landroid/util/OneStepUtils;->getCurrentRunningApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "running":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 127
    return v9

    .line 129
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 131
    .local v1, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getAllResizedTaskInfos()Ljava/util/List;

    move-result-object v4

    .line 132
    .local v4, "resizeList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ResizedTaskInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 133
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$ResizedTaskInfo;

    iget-object v0, v6, Landroid/app/ActivityManager$ResizedTaskInfo;->affinity:Ljava/lang/String;

    .line 134
    .local v0, "affinity":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    const-string/jumbo v6, "OneStepUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "affinity : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/4 v6, 0x1

    return v6

    .line 132
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "affinity":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "resizeList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ResizedTaskInfo;>;"
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v9
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    return v2

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 79
    .local v0, "pv":Landroid/view/ViewParent;
    if-nez v0, :cond_1

    .line 80
    return v3

    .line 82
    :cond_1
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 83
    return v3

    .line 85
    :cond_2
    nop

    nop

    .end local v0    # "pv":Landroid/view/ViewParent;
    invoke-static {v0}, Landroid/util/OneStepUtils;->isVisible(Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method public static saveTencentState(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "save"    # Z

    .prologue
    .line 48
    return-void
.end method
