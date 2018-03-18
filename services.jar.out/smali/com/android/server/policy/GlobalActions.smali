.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$BugReportAction;,
        Lcom/android/server/policy/GlobalActions$DelayCloseDialog;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$RebootAction;,
        Lcom/android/server/policy/GlobalActions$RestartAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private delayCloseDialog:Lcom/android/server/policy/GlobalActions$DelayCloseDialog;

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

.field private mWindow:Landroid/view/Window;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private timer:Ljava/util/Timer;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$DelayCloseDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->delayCloseDialog:Lcom/android/server/policy/GlobalActions$DelayCloseDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/GlobalActions;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Lcom/android/internal/policy/EmergencyAffordanceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$DelayCloseDialog;)Lcom/android/server/policy/GlobalActions$DelayCloseDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->delayCloseDialog:Lcom/android/server/policy/GlobalActions$DelayCloseDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/GlobalActions;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 146
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 147
    sget-object v4, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 148
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 1217
    new-instance v4, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1238
    new-instance v4, Lcom/android/server/policy/GlobalActions$2;

    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1260
    new-instance v4, Lcom/android/server/policy/GlobalActions$3;

    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1269
    new-instance v4, Lcom/android/server/policy/GlobalActions$4;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1281
    new-instance v4, Lcom/android/server/policy/GlobalActions$5;

    invoke-direct {v4, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 160
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 162
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "audio"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 164
    const-string/jumbo v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 163
    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 167
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 175
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 179
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 180
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x21

    invoke-virtual {v2, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 181
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 182
    const-string/jumbo v7, "airplane_mode_on"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 183
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 181
    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 185
    .local v3, "vibrator":Landroid/os/Vibrator;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    .line 187
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 188
    const v7, 0x112008a

    .line 187
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    .line 190
    new-instance v4, Lcom/android/internal/policy/EmergencyAffordanceManager;

    invoke-direct {v4, p1}, Lcom/android/internal/policy/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    .line 159
    return-void

    :cond_0
    move v4, v5

    .line 185
    goto :goto_0

    :cond_1
    move v5, v6

    .line 187
    goto :goto_1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 730
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 731
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 732
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 733
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 734
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 735
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    if-nez v6, :cond_2

    .line 737
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    :goto_1
    const/4 v7, 0x1

    .line 738
    .local v7, "isCurrentUser":Z
    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 740
    :goto_3
    new-instance v0, Lcom/android/server/policy/GlobalActions$16;

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 743
    if-eqz v7, :cond_5

    const-string/jumbo v1, " \u2714"

    .line 742
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 741
    const v2, 0x10803df

    move-object v1, p0

    .line 740
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 760
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v7    # "isCurrentUser":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isCurrentUser":Z
    goto :goto_2

    .end local v7    # "isCurrentUser":Z
    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 739
    .restart local v7    # "isCurrentUser":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 742
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v1, "Primary"

    goto :goto_4

    .line 743
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_5

    .line 729
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "isCurrentUser":Z
    .end local v9    # "user$iterator":Ljava/util/Iterator;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1319
    const-string/jumbo v3, "airplane_mode_on"

    .line 1320
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1317
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1321
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1323
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1324
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1325
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1326
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1316
    :cond_0
    return-void

    .line 1320
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1326
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 13

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    .line 307
    :goto_0
    new-instance v0, Lcom/android/server/policy/GlobalActions$8;

    .line 308
    const v2, 0x108037b

    .line 309
    const v3, 0x108037d

    .line 310
    const v4, 0x104014b

    .line 311
    const v5, 0x104014c

    .line 312
    const v6, 0x104014d

    move-object v1, p0

    .line 307
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 348
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 351
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 352
    const v1, 0x1070040

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, "defaultActions":[Ljava/lang/String;
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 355
    .local v8, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v9

    if-ge v11, v0, :cond_e

    .line 356
    aget-object v7, v9, v11

    .line 357
    .local v7, "actionKey":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 305
    .end local v7    # "actionKey":Ljava/lang/String;
    .end local v8    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "defaultActions":[Ljava/lang/String;
    .end local v11    # "i":I
    :cond_0
    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    goto :goto_0

    .line 361
    .restart local v7    # "actionKey":Ljava/lang/String;
    .restart local v8    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v9    # "defaultActions":[Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_1
    const-string/jumbo v0, "power"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_2
    :goto_3
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 363
    :cond_3
    const-string/jumbo v0, "reboot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$RebootAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$RebootAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RebootAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 365
    :cond_4
    const-string/jumbo v0, "airplane"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 367
    :cond_5
    const-string/jumbo v0, "bugreport"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 368
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 369
    const-string/jumbo v1, "bugreport_in_power_menu"

    const/4 v2, 0x0

    .line 368
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v0

    .line 368
    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$BugReportAction;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 372
    :cond_6
    const-string/jumbo v0, "silent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 373
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 376
    :cond_7
    const-string/jumbo v0, "users"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 377
    const-string/jumbo v0, "fw.power_user_switcher"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    .line 380
    :cond_8
    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 382
    :cond_9
    const-string/jumbo v0, "lockdown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 383
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 384
    :cond_a
    const-string/jumbo v0, "voiceassist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 385
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 386
    :cond_b
    const-string/jumbo v0, "assist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 387
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 388
    :cond_c
    const-string/jumbo v0, "restart"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 389
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$RestartAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$RestartAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RestartAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 391
    :cond_d
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid global action key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 397
    .end local v7    # "actionKey":Ljava/lang/String;
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 398
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getEmergencyAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_f
    new-instance v0, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 403
    new-instance v12, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 404
    .local v12, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 405
    iput-object p0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 408
    new-instance v10, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v10, v0, v12, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 409
    .local v10, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 411
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 412
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 413
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 414
    new-instance v1, Lcom/android/server/policy/GlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 413
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 425
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 426
    new-instance v0, Lcom/android/server/policy/GlobalActions$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v10, v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 438
    invoke-virtual {v10, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 440
    return-object v10
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 647
    new-instance v0, Lcom/android/server/policy/GlobalActions$13;

    const v1, 0x10802ec

    .line 648
    const v2, 0x104014f

    .line 647
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 718
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEmergencyAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 627
    new-instance v0, Lcom/android/server/policy/GlobalActions$12;

    const v1, 0x108029e

    .line 628
    const v2, 0x104013f

    .line 627
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 691
    new-instance v0, Lcom/android/server/policy/GlobalActions$15;

    const v1, 0x108002f

    .line 692
    const v2, 0x1040151

    .line 691
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 604
    new-instance v0, Lcom/android/server/policy/GlobalActions$11;

    const v1, 0x1080459

    .line 605
    const v2, 0x104014e

    .line 604
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 669
    new-instance v0, Lcom/android/server/policy/GlobalActions$14;

    const v1, 0x108046e

    .line 670
    const v2, 0x1040150

    .line 669
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 11

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x0

    .line 233
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    .line 234
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 235
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    .line 238
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 239
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6, v9}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .line 238
    if-eqz v6, :cond_0

    .line 240
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6, v9}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-eqz v6, :cond_2

    .line 243
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    .line 244
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 245
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v6, "GlobalActions"

    invoke-virtual {v0, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const v8, -0x66eae2d9

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 248
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    const/4 v4, 0x0

    .line 250
    .local v4, "mode":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 251
    const-string/jumbo v7, "touchframe_keymode"

    const/4 v8, -0x2

    .line 250
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 257
    :goto_0
    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3

    .line 258
    :cond_1
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 262
    :goto_1
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 263
    .local v2, "height":I
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 264
    .local v5, "width":I
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 265
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 266
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 267
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 268
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 269
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 270
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    new-instance v7, Lcom/android/server/policy/GlobalActions$6;

    invoke-direct {v7, p0}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v6, v7}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 278
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    new-instance v7, Lcom/android/server/policy/GlobalActions$7;

    invoke-direct {v7, p0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v6, v7}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 292
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    .line 232
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "height":I
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "mode":I
    .end local v5    # "width":I
    :goto_2
    return-void

    .line 241
    :cond_2
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6, v9}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    goto :goto_2

    .line 252
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "mode":I
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v6, "GlobalActions"

    const-string/jumbo v7, "SettingNotFoundException: Settings.System.TOUCHFRAME_KEYMODE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_1
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 726
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1303
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    return-void

    .line 1306
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1307
    const-string/jumbo v3, "airplane_mode_on"

    .line 1305
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1309
    .local v0, "airplaneModeOn":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1310
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 1301
    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    .line 1305
    goto :goto_0

    .line 1309
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    .line 768
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 769
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 770
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 771
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 772
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 773
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 766
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 778
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 781
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    check-cast v1, Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 782
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 781
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 777
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 780
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "silentModeOn":Z
    goto :goto_0

    .line 782
    :cond_2
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 801
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 799
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 788
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v0

    .line 793
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 199
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 200
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 202
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 204
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto :goto_0
.end method