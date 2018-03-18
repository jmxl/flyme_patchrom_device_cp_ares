.class public Lcom/android/server/am/AudioLoopbackManager;
.super Ljava/lang/Object;
.source "AudioLoopbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AudioLoopbackManager$1;,
        Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;,
        Lcom/android/server/am/AudioLoopbackManager$userSwitchReceiver;
    }
.end annotation


# static fields
.field private static final AUDIOLOOPBACK_APPLIST_DB_KEY:Ljava/lang/String; = "audio_loopback_setting_applist"

.field private static final AUDIOLOOPBACK_ONOFF_DB_KEY:Ljava/lang/String; = "audio_loopback_setting"

.field private static final MV_OFF:I = 0x0

.field private static final MV_ON:I = 0x1


# instance fields
.field final DEBUG:Z

.field final RECEIVERPACKGE:Ljava/lang/String;

.field final RECORD_SOUNDCHANGE_ACTION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private activityManager:Landroid/app/ActivityManager;

.field final am:Landroid/media/AudioManager;

.field private isFirstOpen:Z

.field private mAudioLoopbackAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioLoopbackAppListObserver:Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;

.field private mAudioLoopbackOnoffObserver:Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;

.field final mContext:Landroid/content/Context;

.field private mOnoff:Z

.field final mResolver:Landroid/content/ContentResolver;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/AudioLoopbackManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/AudioLoopbackManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/am/AudioLoopbackManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/AudioLoopbackManager;->mOnoff:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/AudioLoopbackManager;->isAudioLoopbackOpen(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/AudioLoopbackManager;->stringToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "AudioLoopbackManager"

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/android/server/am/AudioLoopbackManager;->DEBUG:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->activityManager:Landroid/app/ActivityManager;

    .line 44
    const-string/jumbo v0, "com.yulong.action.AudioLoopbackReceiver"

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->RECORD_SOUNDCHANGE_ACTION:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "com.yulong.android.audioloopback"

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->RECEIVERPACKGE:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mOnoff:Z

    .line 51
    new-instance v0, Lcom/android/server/am/AudioLoopbackManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AudioLoopbackManager$1;-><init>(Lcom/android/server/am/AudioLoopbackManager;)V

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppList:Ljava/util/ArrayList;

    .line 65
    iput-boolean v1, p0, Lcom/android/server/am/AudioLoopbackManager;->isFirstOpen:Z

    .line 148
    iput-object p1, p0, Lcom/android/server/am/AudioLoopbackManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 149
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 150
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 151
    iput-object p2, p0, Lcom/android/server/am/AudioLoopbackManager;->mContext:Landroid/content/Context;

    .line 152
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->am:Landroid/media/AudioManager;

    .line 153
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mResolver:Landroid/content/ContentResolver;

    .line 154
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mContext:Landroid/content/Context;

    .line 155
    const-string/jumbo v1, "activity"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->activityManager:Landroid/app/ActivityManager;

    .line 146
    return-void
.end method

.method private initAudioLoopbackAppListObserver()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/android/server/am/AudioLoopbackManager$3;

    const-string/jumbo v1, "audio_loopback_setting_applist"

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/am/AudioLoopbackManager$3;-><init>(Lcom/android/server/am/AudioLoopbackManager;Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppListObserver:Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;

    .line 224
    return-void
.end method

.method private initAudioLoopbackOnOffObserver()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/android/server/am/AudioLoopbackManager$2;

    const-string/jumbo v1, "audio_loopback_setting"

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/am/AudioLoopbackManager$2;-><init>(Lcom/android/server/am/AudioLoopbackManager;Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackOnoffObserver:Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;

    .line 185
    return-void
.end method

.method private isAudioLoopbackOpen(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/AudioLoopbackManager;->getState(Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, "state":I
    if-ne v0, v2, :cond_0

    .line 213
    iput-boolean v2, p0, Lcom/android/server/am/AudioLoopbackManager;->mOnoff:Z

    .line 218
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/AudioLoopbackManager;->mOnoff:Z

    return v1

    .line 216
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/am/AudioLoopbackManager;->mOnoff:Z

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/AudioLoopbackManager$userSwitchReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/am/AudioLoopbackManager$userSwitchReceiver;-><init>(Lcom/android/server/am/AudioLoopbackManager;)V

    .line 168
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method private registerListener()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackOnoffObserver:Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->registerContentObserver()V

    .line 119
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppListObserver:Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->registerContentObserver()V

    .line 117
    return-void
.end method

.method private sendToAudioLoopback(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 80
    const-string/jumbo v1, "AudioLoopbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendToAudioLoopback and isopen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/am/AudioLoopbackManager;->setIsFirstOpen(Z)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.yulong.android.audioloopback"

    .line 92
    const-string/jumbo v3, "com.yulong.android.audioloopback.AudioLoopbackService"

    .line 91
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "com.yulong.action.AudioLoopbackService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    if-nez p1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 79
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto :goto_0
.end method

.method private stringToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 133
    return-object v2

    .line 136
    :cond_0
    const-string/jumbo v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "items":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 138
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    const-string/jumbo v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_2
    return-object v2
.end method

.method private unRegisterListener()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackOnoffObserver:Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppListObserver:Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 112
    return-void
.end method


# virtual methods
.method public dataBaseChange()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/server/am/AudioLoopbackManager;->isNeedOpenAudioLoopbackDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-boolean v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mOnoff:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/AudioLoopbackManager;->getIsFirstOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-string/jumbo v0, "AudioLoopbackManager"

    const-string/jumbo v1, "Database change from SystemUI:open"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/AudioLoopbackManager;->sendToAudioLoopback(Z)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mOnoff:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/AudioLoopbackManager;->getIsFirstOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const-string/jumbo v0, "AudioLoopbackManager"

    const-string/jumbo v1, "Database change from SystemUI:close"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/AudioLoopbackManager;->sendToAudioLoopback(Z)V

    goto :goto_0
.end method

.method public getIsFirstOpen()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/am/AudioLoopbackManager;->isFirstOpen:Z

    return v0
.end method

.method public getSettingAudioLoopbackAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getState(Ljava/lang/String;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 124
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_0
    return p2

    .line 125
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public initSettingsObserver()V
    .locals 2

    .prologue
    .line 159
    const-string/jumbo v0, "AudioLoopbackManager"

    const-string/jumbo v1, "AudioLoopbackManager init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/android/server/am/AudioLoopbackManager;->initAudioLoopbackOnOffObserver()V

    .line 161
    invoke-direct {p0}, Lcom/android/server/am/AudioLoopbackManager;->initAudioLoopbackAppListObserver()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/am/AudioLoopbackManager;->registerListener()V

    .line 163
    invoke-direct {p0}, Lcom/android/server/am/AudioLoopbackManager;->registerBroadcastReceiver()V

    .line 158
    return-void
.end method

.method public isNeedOpenAudioLoopbackDialog()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 281
    iget-object v2, p0, Lcom/android/server/am/AudioLoopbackManager;->activityManager:Landroid/app/ActivityManager;

    if-nez v2, :cond_0

    .line 282
    const-string/jumbo v2, "AudioLoopbackManager"

    const-string/jumbo v3, "activityManager == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v5

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AudioLoopbackManager;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 286
    .local v1, "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_2

    .line 287
    const-string/jumbo v2, "AudioLoopbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "taskList != null tasklist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 289
    const-string/jumbo v2, "AudioLoopbackManager"

    const-string/jumbo v3, "taskList.size()==0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v5

    .line 292
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    return v6

    .line 297
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method public sendBroadcastAudioLoopback(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 102
    const-string/jumbo v0, "AudioLoopbackManager"

    const-string/jumbo v1, "setBroadcastToAudioLoopback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-boolean v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mOnoff:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/server/am/AudioLoopbackManager;->getIsFirstOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/AudioLoopbackManager;->sendToAudioLoopback(Z)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/AudioLoopbackManager;->getIsFirstOpen()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager;->mAudioLoopbackAppList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/AudioLoopbackManager;->sendToAudioLoopback(Z)V

    goto :goto_0
.end method

.method public setIsFirstOpen(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/am/AudioLoopbackManager;->isFirstOpen:Z

    .line 71
    return-void
.end method
