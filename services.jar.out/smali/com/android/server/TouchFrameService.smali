.class public Lcom/android/server/TouchFrameService;
.super Lcom/android/server/SystemService;
.source "TouchFrameService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TouchFrameService$1;,
        Lcom/android/server/TouchFrameService$2;,
        Lcom/android/server/TouchFrameService$ScreenshotReceiver;,
        Lcom/android/server/TouchFrameService$ThumbReceiver;,
        Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;,
        Lcom/android/server/TouchFrameService$TrackPoint;
    }
.end annotation


# static fields
.field private static final COMBINATION_DIRECTION_LEFT:I = 0x1

.field private static final COMBINATION_DIRECTION_NONE:I = 0x0

.field private static final COMBINATION_DIRECTION_RIGHT:I = 0x2

.field private static final COMBINATION_STEP_0:I = 0x0

.field private static final COMBINATION_STEP_1:I = 0x1

.field private static final COMBINATION_STEP_2:I = 0x2

.field private static final COMBINATION_STEP_3:I = 0x3

.field private static DEBUG:Z = false

.field private static final FILENAME_TP:Ljava/lang/String; = "/sys/touchscreen/touch_chip_info"

.field private static final MSG_CLICK:I = 0x6

.field private static final MSG_CLICK_OVER:I = 0x7

.field private static final MSG_DOUBLE_CLICK:I = 0xb

.field private static final MSG_LONG_PRESS:I = 0xc

.field private static final MSG_MOVE_LEFT:I = 0x2

.field private static final MSG_MOVE_RIGHT:I = 0x3

.field private static final MSG_MOVE_UP:I = 0x4

.field private static final MSG_NAMES:[Ljava/lang/String;

.field private static final MSG_PAYMENT_MENU:I = 0x9

.field private static final MSG_SCREENSHOT_TOUCH_EVENT:I = 0xa

.field private static final MSG_SCREEN_SHOT:I = 0x0

.field private static final MSG_SCREEN_SHOT_OVER:I = 0x1

.field private static final MSG_THUMB_TOUCH_EVENT:I = 0x5

.field private static final MSG_TOAST:I = 0x8

.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_SERVICE_EXT:Ljava/lang/String; = "com.journeyui.systemui.screenshot.ScreenshotService"

.field private static final TAG:Ljava/lang/String; = "TouchFrameService"

.field private static final TRAKCPOINT_MAX:I = 0x5

.field private static final VIBRATION_PATTERN:[J

.field private static final mClickOverSlop:I = 0x32

.field private static final mClickSlopX:I = 0x3c

.field private static final mClickSlopY:I = 0x19

.field private static final mCombinationSlop:I = 0x64

.field private static final mDoubleClickMaxSlop:J = 0xc8L

.field private static final mDoubleClickMinSlop:J = 0x50L

.field private static final mLongPressSlop:I = 0x1f4

.field private static final mMoveSlopX:I = 0x3c

.field private static final mMoveSlopY:I = 0x19

.field private static final mTouchSlopX:I = 0x30

.field private static sDebugBSP:Z


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChangeDirection:Z

.field private mChangeDirectionNum:I

.field private mClickCounter:I

.field private mCombinationCurrentDirection:I

.field private mCombinationInLeft:Z

.field private mCombinationStep:I

.field private mCompareX:I

.field private mContext:Landroid/content/Context;

.field private mDisabled:I

.field private mFingerprintTouchSlopX:I

.field private mGapLeft:I

.field private mGapMiddle:I

.field private mGapRight:I

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedCombination:Z

.field private mHasPerformedLongPress:Z

.field private mHasPerformedMoveLeft:Z

.field private mHasPerformedMoveRight:Z

.field private mHasPerformedMoveUp:Z

.field private mHasPerformedPaymentMenu:Z

.field private mHasPerformedScreenshot:Z

.field private mHasPerformedTpMoveUp:Z

.field private mHasPerformedTwoFingersCloser:Z

.field private mHasPerformedTwoFingersSeparated:Z

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mKeyMode:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastDown:J

.field private mLastUp:J

.field private mLeftPanelMoveDirection:I

.field private mLocked:Z

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mOrientation:I

.field private mPaymentMenuSwith:Z

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mRightPanelMoveDirection:I

.field private mRotation:I

.field private mScreenOn:Z

.field private mScreenshotReceiver:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/TouchFrameService$ScreenshotReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private mThumbReceiver:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/TouchFrameService$ThumbReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private mTpDownX:I

.field private mTpDownY:I

.field private mTwoFingersGesture:Z

.field private mUiHandler:Landroid/os/Handler;

.field private mUseTouchPadMoveUP:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManagerService:Landroid/view/IWindowManager;

.field private tp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TouchFrameService$TrackPoint;",
            ">;"
        }
    .end annotation
.end field

.field private tpInfo:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/TouchFrameService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/TouchFrameService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/TouchFrameService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TouchFrameService;->tpInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/TouchFrameService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/TouchFrameService;)Lcom/android/server/input/InputManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mInputManager:Lcom/android/server/input/InputManagerService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TouchFrameService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/TouchFrameService;->mLocked:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/TouchFrameService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/TouchFrameService;->mOrientation:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/TouchFrameService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/TouchFrameService;->mRotation:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/TouchFrameService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mScreenshotReceiver:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/TouchFrameService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mThumbReceiver:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/TouchFrameService;)Landroid/view/IWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mWindowManagerService:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/TouchFrameService;->DEBUG:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/server/TouchFrameService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/TouchFrameService;->mDisabled:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/TouchFrameService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/TouchFrameService;->mKeyMode:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/TouchFrameService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/TouchFrameService;->mLocked:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/TouchFrameService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/TouchFrameService;->mMotionDownX:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/TouchFrameService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/TouchFrameService;->mOrientation:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/TouchFrameService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/TouchFrameService;->mPaymentMenuSwith:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/TouchFrameService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/TouchFrameService;->mRotation:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/TouchFrameService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/TouchFrameService;->mScreenOn:Z

    return p1
.end method

.method static synthetic -set9(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/TouchFrameService;->sDebugBSP:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/TouchFrameService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TouchFrameService;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/TouchFrameService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->clearBackgroundProcess()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/TouchFrameService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->onTwoFingersCloser()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/TouchFrameService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->startScreenshotService()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/TouchFrameService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->updateKeyModeFromSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 82
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/TouchFrameService;->DEBUG:Z

    .line 83
    sput-boolean v2, Lcom/android/server/TouchFrameService;->sDebugBSP:Z

    .line 129
    new-array v0, v3, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/TouchFrameService;->VIBRATION_PATTERN:[J

    .line 189
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 190
    const-string/jumbo v1, "MSG_SCREEN_SHOT"

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "MSG_SCREEN_SHOT_OVER"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "MSG_MOVE_LEFT"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 193
    const-string/jumbo v1, "MSG_MOVE_RIGHT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "MSG_MOVE_UP"

    aput-object v1, v0, v3

    .line 195
    const-string/jumbo v1, "MSG_THUMB_TOUCH_EVENT"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "MSG_CLICK"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 197
    const-string/jumbo v1, "MSG_CLICK_OVER"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "MSG_TOAST"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "MSG_PAYMENT_MENU"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "MSG_SCREENSHOT_TOUCH_EVENT"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "MSG_DOUBLE_CLICK"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "MSG_LONG_PRESS"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 189
    sput-object v0, Lcom/android/server/TouchFrameService;->MSG_NAMES:[Ljava/lang/String;

    .line 79
    return-void

    .line 129
    :array_0
    .array-data 8
        0x32
        0x32
        0x32
        0x32
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 606
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TouchFrameService;->tp:Ljava/util/ArrayList;

    .line 89
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mScreenOn:Z

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TouchFrameService;->mThumbReceiver:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TouchFrameService;->mScreenshotReceiver:Ljava/util/HashMap;

    .line 99
    iput-wide v4, p0, Lcom/android/server/TouchFrameService;->mLastDown:J

    .line 100
    iput-wide v4, p0, Lcom/android/server/TouchFrameService;->mLastUp:J

    .line 111
    iput v1, p0, Lcom/android/server/TouchFrameService;->mGapLeft:I

    .line 112
    iput v1, p0, Lcom/android/server/TouchFrameService;->mGapRight:I

    .line 113
    iput v1, p0, Lcom/android/server/TouchFrameService;->mGapMiddle:I

    .line 114
    iput-boolean v1, p0, Lcom/android/server/TouchFrameService;->mUseTouchPadMoveUP:Z

    .line 125
    iput v1, p0, Lcom/android/server/TouchFrameService;->mLeftPanelMoveDirection:I

    .line 126
    iput v1, p0, Lcom/android/server/TouchFrameService;->mRightPanelMoveDirection:I

    .line 139
    iput v1, p0, Lcom/android/server/TouchFrameService;->mCombinationStep:I

    .line 141
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mCombinationInLeft:Z

    .line 146
    iput v1, p0, Lcom/android/server/TouchFrameService;->mCombinationCurrentDirection:I

    .line 147
    iput v1, p0, Lcom/android/server/TouchFrameService;->mChangeDirectionNum:I

    .line 148
    iput v1, p0, Lcom/android/server/TouchFrameService;->mCompareX:I

    .line 149
    iput-boolean v1, p0, Lcom/android/server/TouchFrameService;->mChangeDirection:Z

    .line 159
    iput v1, p0, Lcom/android/server/TouchFrameService;->mDisabled:I

    .line 160
    iput-boolean v1, p0, Lcom/android/server/TouchFrameService;->mLocked:Z

    .line 161
    iput v1, p0, Lcom/android/server/TouchFrameService;->mFingerprintTouchSlopX:I

    .line 163
    iput v1, p0, Lcom/android/server/TouchFrameService;->mKeyMode:I

    .line 165
    iput-boolean v1, p0, Lcom/android/server/TouchFrameService;->mPaymentMenuSwith:Z

    .line 205
    new-instance v0, Lcom/android/server/TouchFrameService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TouchFrameService$1;-><init>(Lcom/android/server/TouchFrameService;)V

    iput-object v0, p0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    .line 281
    new-instance v0, Lcom/android/server/TouchFrameService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TouchFrameService$2;-><init>(Lcom/android/server/TouchFrameService;)V

    iput-object v0, p0, Lcom/android/server/TouchFrameService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 607
    iput-object p1, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    .line 608
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "new"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    .line 214
    const-string/jumbo v0, "TouchFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/TouchFrameService;->MSG_NAMES:[Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-boolean v0, Lcom/android/server/TouchFrameService;->sDebugBSP:Z

    if-eqz v0, :cond_0

    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_0

    .line 218
    sget-object v0, Lcom/android/server/TouchFrameService;->MSG_NAMES:[Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    iput v4, p1, Landroid/os/Message;->what:I

    .line 223
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 225
    :pswitch_0
    const v6, 0x11001

    .line 226
    .local v6, "metaState":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/TouchFrameService;->sendEvent(IIIJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v6    # "metaState":I
    :catch_0
    move-exception v7

    .line 277
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 229
    .end local v7    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v1, 0x77

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TouchFrameService;->sendEvent(IIIJ)V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->onMoveLeft()V

    goto :goto_0

    .line 235
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->onMoveRight()V

    goto :goto_0

    .line 238
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->onMoveUp()V

    goto :goto_0

    .line 241
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mThumbReceiver:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "r$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/TouchFrameService$ThumbReceiver;

    .line 242
    .local v10, "r":Lcom/android/server/TouchFrameService$ThumbReceiver;
    if-eqz v10, :cond_2

    .line 243
    invoke-virtual {v10}, Lcom/android/server/TouchFrameService$ThumbReceiver;->getListener()Lcom/zeusis/touchframe/IThumbListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v1, v0}, Lcom/zeusis/touchframe/IThumbListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 246
    .end local v10    # "r":Lcom/android/server/TouchFrameService$ThumbReceiver;
    .end local v11    # "r$iterator":Ljava/util/Iterator;
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->onClick()V

    goto :goto_0

    .line 249
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 250
    .local v8, "keyCode":I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v8, v0, v1}, Lcom/android/server/TouchFrameService;->sendEvent(III)V

    goto :goto_0

    .line 253
    .end local v8    # "keyCode":I
    :pswitch_8
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 254
    .local v12, "tip":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v12, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TouchFrameService;->mToast:Landroid/widget/Toast;

    .line 259
    :goto_2
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v12}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 262
    .end local v12    # "tip":Ljava/lang/String;
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->instantOpenPaymentMenu()V

    goto/16 :goto_0

    .line 265
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mScreenshotReceiver:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "r$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/TouchFrameService$ScreenshotReceiver;

    .line 266
    .local v9, "r":Lcom/android/server/TouchFrameService$ScreenshotReceiver;
    if-eqz v9, :cond_4

    .line 267
    invoke-virtual {v9}, Lcom/android/server/TouchFrameService$ScreenshotReceiver;->getListener()Lcom/zeusis/touchframe/IScreenshotListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v1, v0}, Lcom/zeusis/touchframe/IScreenshotListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 270
    .end local v9    # "r":Lcom/android/server/TouchFrameService$ScreenshotReceiver;
    .end local v11    # "r$iterator":Ljava/util/Iterator;
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->onDoubleClick()V

    goto/16 :goto_0

    .line 273
    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->onLongPress()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private back()V
    .locals 2

    .prologue
    .line 906
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "back"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v0, Lcom/android/server/TouchFrameService$4;

    invoke-direct {v0, p0}, Lcom/android/server/TouchFrameService$4;-><init>(Lcom/android/server/TouchFrameService;)V

    invoke-virtual {v0}, Lcom/android/server/TouchFrameService$4;->start()V

    .line 904
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1040
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1042
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedLongPress:Z

    .line 1043
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveLeft:Z

    .line 1044
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveRight:Z

    .line 1045
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveUp:Z

    .line 1046
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedTwoFingersCloser:Z

    .line 1047
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedTwoFingersSeparated:Z

    .line 1048
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedCombination:Z

    .line 1049
    iput v2, p0, Lcom/android/server/TouchFrameService;->mLeftPanelMoveDirection:I

    .line 1050
    iput v2, p0, Lcom/android/server/TouchFrameService;->mRightPanelMoveDirection:I

    .line 1051
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mTwoFingersGesture:Z

    .line 1052
    iput v2, p0, Lcom/android/server/TouchFrameService;->mChangeDirectionNum:I

    .line 1053
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mChangeDirection:Z

    .line 1054
    iput v2, p0, Lcom/android/server/TouchFrameService;->mCombinationCurrentDirection:I

    .line 1055
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedScreenshot:Z

    .line 1056
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedPaymentMenu:Z

    .line 1038
    return-void
.end method

.method private clearBackgroundProcess()V
    .locals 3

    .prologue
    .line 895
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "clearBackgroundProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {p0}, Lcom/android/server/TouchFrameService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "Not Clear Background Process because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return-void

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/TouchFrameService;->sendCloseSystemWindows()V

    .line 901
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->triggerCustomAction(II)V

    .line 893
    return-void
.end method

.method private getKeyModeSetting(I)I
    .locals 5
    .param p1, "defaultValue"    # I

    .prologue
    .line 590
    move v0, p1

    .line 592
    .local v0, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 593
    const-string/jumbo v3, "touchframe_keymode"

    const/4 v4, -0x2

    .line 592
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 596
    :goto_0
    return v0

    .line 594
    :catch_0
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private gotoSleep()V
    .locals 4

    .prologue
    .line 874
    iget-object v1, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 875
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 872
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 642
    const-class v4, Landroid/view/WindowManagerPolicy;

    invoke-virtual {p0, v4}, Lcom/android/server/TouchFrameService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy;

    iput-object v4, p0, Lcom/android/server/TouchFrameService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 644
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 645
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    const-string/jumbo v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    iget-object v4, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/TouchFrameService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 650
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->registerKeyModeSettingObserver()V

    .line 651
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->updateKeyModeFromSettings()V

    .line 653
    iget-object v4, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/server/TouchFrameService;->mVibrator:Landroid/os/Vibrator;

    .line 654
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TouchFrameService;->mActivityManager:Landroid/app/IActivityManager;

    .line 655
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TouchFrameService;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 656
    iget-object v4, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 657
    iget-object v4, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/server/TouchFrameService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 658
    iget-object v4, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 659
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 660
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 661
    .local v2, "res":Landroid/content/res/Resources;
    div-int/lit8 v4, v3, 0x2

    iput v4, p0, Lcom/android/server/TouchFrameService;->mGapMiddle:I

    .line 639
    return-void
.end method

.method private instantOpenPaymentMenu()V
    .locals 7

    .prologue
    .line 925
    const-string/jumbo v3, "TouchFrameService"

    const-string/jumbo v4, "instantOpenPaymentMenu"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-virtual {p0}, Lcom/android/server/TouchFrameService;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_0

    .line 927
    const-string/jumbo v3, "TouchFrameService"

    const-string/jumbo v4, "Not opening PaymentMenu because user setup is in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void

    .line 930
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 931
    .local v2, "mapLocation":Ljava/util/HashMap;
    const-string/jumbo v3, "Function"

    const-string/jumbo v4, "PaymentMenu"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string/jumbo v3, "TouchFrame"

    sget-object v4, Landroid/util/JunkEvent;->TOUCH_FRAME_EVENT_ID_PAYMENT:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/JunkEvent;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/util/JunkLog;->ux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 933
    invoke-virtual {p0}, Lcom/android/server/TouchFrameService;->sendCloseSystemWindows()V

    .line 935
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 937
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.zsPayment"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const/high16 v3, 0x10200000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 939
    iget-object v3, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "TouchFrameService"

    const-string/jumbo v4, "No activity to open PaymentMenu"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private interceptTouchScreenEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 721
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 722
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    .line 723
    .local v0, "edgeFlags":I
    sget-boolean v6, Lcom/android/server/TouchFrameService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "TouchFrameService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "interceptTouchScreenEvent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mRotation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/TouchFrameService;->mRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mHasPerformedTpMoveUp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/TouchFrameService;->mHasPerformedTpMoveUp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    and-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/TouchFrameService;->mScreenshotReceiver:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 728
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 749
    sget-boolean v5, Lcom/android/server/TouchFrameService;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "TouchFrameService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 724
    :cond_3
    iget-object v6, p0, Lcom/android/server/TouchFrameService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 725
    iget-object v6, p0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-static {v6, v7, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 726
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 730
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_1
    iput v3, p0, Lcom/android/server/TouchFrameService;->mTpDownX:I

    .line 731
    iput v4, p0, Lcom/android/server/TouchFrameService;->mTpDownY:I

    .line 732
    iput-boolean v1, p0, Lcom/android/server/TouchFrameService;->mHasPerformedTpMoveUp:Z

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_4

    move v1, v5

    .line 734
    .local v1, "mTouchFrameIsPressed":Z
    :cond_4
    if-eqz v1, :cond_2

    .line 735
    iput-boolean v5, p0, Lcom/android/server/TouchFrameService;->mHasPerformedScreenshot:Z

    goto :goto_1

    .line 740
    .end local v1    # "mTouchFrameIsPressed":Z
    :pswitch_2
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/TouchFrameService;->mHasPerformedTpMoveUp:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/TouchFrameService;->mPaymentMenuSwith:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/server/TouchFrameService;->mUseTouchPadMoveUP:Z

    if-nez v6, :cond_2

    .line 741
    :cond_5
    iput-boolean v5, p0, Lcom/android/server/TouchFrameService;->mHasPerformedTpMoveUp:Z

    .line 742
    iget-object v5, p0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 743
    iget-object v5, p0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onClick()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 789
    const-string/jumbo v0, "TouchFrameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick mMotionDownX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/TouchFrameService;->mMotionDownX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iput v2, p0, Lcom/android/server/TouchFrameService;->mClickCounter:I

    .line 791
    iget-boolean v0, p0, Lcom/android/server/TouchFrameService;->mLocked:Z

    if-eqz v0, :cond_0

    .line 792
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v2, "Single Click but no reponse beacause of Game Dock Locked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void

    .line 795
    :cond_0
    iget v0, p0, Lcom/android/server/TouchFrameService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 796
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v2, "Single Click but no reponse beacause of Disable Flag"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void

    .line 804
    :cond_1
    iget v0, p0, Lcom/android/server/TouchFrameService;->mKeyMode:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/server/TouchFrameService;->mKeyMode:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 805
    :cond_2
    return-void

    .line 807
    :cond_3
    iget v0, p0, Lcom/android/server/TouchFrameService;->mMotionDownX:I

    iget v3, p0, Lcom/android/server/TouchFrameService;->mGapMiddle:I

    if-ge v0, v3, :cond_5

    const/4 v6, 0x1

    .line 808
    .local v6, "isLeft":Z
    :goto_0
    const/4 v1, 0x4

    .line 809
    .local v1, "keyCode":I
    iget v0, p0, Lcom/android/server/TouchFrameService;->mKeyMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    if-eqz v6, :cond_6

    .line 810
    const/16 v1, 0xbb

    .line 814
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TouchFrameService;->sendEvent(IIIJ)V

    .line 815
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v0, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 816
    .local v8, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v8, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 817
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 818
    .local v7, "mapLocation":Ljava/util/HashMap;
    const-string/jumbo v0, "Function"

    const-string/jumbo v3, "Back"

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string/jumbo v0, "TouchFrame"

    sget-object v3, Landroid/util/JunkEvent;->TOUCH_FRAME_EVENT_ID_CLICK:Ljava/lang/String;

    invoke-static {v7}, Landroid/util/JunkEvent;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4, v2}, Landroid/util/JunkLog;->ux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 787
    return-void

    .line 807
    .end local v1    # "keyCode":I
    .end local v6    # "isLeft":Z
    .end local v7    # "mapLocation":Ljava/util/HashMap;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "isLeft":Z
    goto :goto_0

    .line 811
    .restart local v1    # "keyCode":I
    :cond_6
    iget v0, p0, Lcom/android/server/TouchFrameService;->mKeyMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    if-nez v6, :cond_4

    .line 812
    const/16 v1, 0xbb

    goto :goto_1
.end method

.method private onDoubleClick()V
    .locals 3

    .prologue
    .line 841
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "onDoubleClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TouchFrameService;->mClickCounter:I

    .line 843
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->triggerCustomAction(II)V

    .line 839
    return-void
.end method

.method private onLongPress()V
    .locals 3

    .prologue
    .line 824
    const-string/jumbo v0, "TouchFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLongPress mMotionDownX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/TouchFrameService;->mMotionDownX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TouchFrameService;->mHasPerformedLongPress:Z

    .line 826
    iget-boolean v0, p0, Lcom/android/server/TouchFrameService;->mLocked:Z

    if-eqz v0, :cond_0

    .line 827
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "LongPress but no reponse beacause of Game Dock Locked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return-void

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->stopSystemLockTaskMode()V

    .line 822
    return-void
.end method

.method private onMoveLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 959
    const-string/jumbo v2, "TouchFrameService"

    const-string/jumbo v3, "onMoveLeft"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iput-boolean v5, p0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveLeft:Z

    .line 961
    iget v2, p0, Lcom/android/server/TouchFrameService;->mMotionDownX:I

    iget v3, p0, Lcom/android/server/TouchFrameService;->mGapMiddle:I

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    .line 962
    .local v0, "isLeft":Z
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 963
    .local v1, "mapLocation":Ljava/util/HashMap;
    const-string/jumbo v2, "Function"

    const-string/jumbo v3, "DockBar"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-string/jumbo v3, "Side"

    if-eqz v0, :cond_1

    const-string/jumbo v2, "Left"

    :goto_1
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string/jumbo v2, "Direction"

    const-string/jumbo v3, "Left"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string/jumbo v2, "TouchFrame"

    sget-object v3, Landroid/util/JunkEvent;->TOUCH_FRAME_EVENT_ID_MOVE:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/JunkEvent;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Landroid/util/JunkLog;->ux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 967
    if-eqz v0, :cond_2

    .line 968
    iget-object v2, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v5, v6}, Landroid/app/StatusBarManager;->triggerCustomAction(II)V

    .line 957
    :goto_2
    return-void

    .line 961
    .end local v0    # "isLeft":Z
    .end local v1    # "mapLocation":Ljava/util/HashMap;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isLeft":Z
    goto :goto_0

    .line 964
    .restart local v1    # "mapLocation":Ljava/util/HashMap;
    :cond_1
    const-string/jumbo v2, "Right"

    goto :goto_1

    .line 970
    :cond_2
    iget-object v2, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/app/StatusBarManager;->triggerCustomAction(II)V

    goto :goto_2
.end method

.method private onMoveRight()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 976
    const-string/jumbo v2, "TouchFrameService"

    const-string/jumbo v3, "onMoveRight"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iput-boolean v6, p0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveRight:Z

    .line 978
    iget v2, p0, Lcom/android/server/TouchFrameService;->mMotionDownX:I

    iget v3, p0, Lcom/android/server/TouchFrameService;->mGapMiddle:I

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    .line 979
    .local v0, "isLeft":Z
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 980
    .local v1, "mapLocation":Ljava/util/HashMap;
    const-string/jumbo v2, "Function"

    const-string/jumbo v3, "DockBar"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string/jumbo v3, "Side"

    if-eqz v0, :cond_1

    const-string/jumbo v2, "Left"

    :goto_1
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string/jumbo v2, "Direction"

    const-string/jumbo v3, "Right"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string/jumbo v2, "TouchFrame"

    sget-object v3, Landroid/util/JunkEvent;->TOUCH_FRAME_EVENT_ID_MOVE:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/JunkEvent;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/util/JunkLog;->ux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 984
    if-eqz v0, :cond_2

    .line 985
    iget-object v2, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v6, v6}, Landroid/app/StatusBarManager;->triggerCustomAction(II)V

    .line 974
    :goto_2
    return-void

    .line 978
    .end local v0    # "isLeft":Z
    .end local v1    # "mapLocation":Ljava/util/HashMap;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isLeft":Z
    goto :goto_0

    .line 981
    .restart local v1    # "mapLocation":Ljava/util/HashMap;
    :cond_1
    const-string/jumbo v2, "Right"

    goto :goto_1

    .line 987
    :cond_2
    iget-object v2, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v3}, Landroid/app/StatusBarManager;->triggerCustomAction(II)V

    goto :goto_2
.end method

.method private onMoveUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 993
    const-string/jumbo v1, "TouchFrameService"

    const-string/jumbo v2, "onMoveUp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveUp:Z

    .line 995
    iget-boolean v1, p0, Lcom/android/server/TouchFrameService;->mPaymentMenuSwith:Z

    if-eqz v1, :cond_0

    .line 996
    iput-boolean v4, p0, Lcom/android/server/TouchFrameService;->mPaymentMenuSwith:Z

    .line 997
    const-string/jumbo v1, "InputGesture"

    sget-object v2, Landroid/util/JunkEvent;->INPUT_GESTURE_EVENT_ID_VOICE_ASIST:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v4}, Landroid/util/JunkLog;->ux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 998
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->openVoiceAsist()V

    .line 999
    return-void

    .line 1002
    :cond_0
    iget v1, p0, Lcom/android/server/TouchFrameService;->mKeyMode:I

    if-eqz v1, :cond_1

    .line 1003
    const-string/jumbo v1, "TouchFrameService"

    const-string/jumbo v2, "move up no reponse beacause of key mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return-void

    .line 1007
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1008
    .local v0, "mapLocation":Ljava/util/HashMap;
    const-string/jumbo v1, "Function"

    const-string/jumbo v2, "Recents"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    const-string/jumbo v1, "TouchFrame"

    sget-object v2, Landroid/util/JunkEvent;->TOUCH_FRAME_EVENT_ID_MOVE_UP:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/JunkEvent;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Landroid/util/JunkLog;->ux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1010
    iget-object v1, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v4, v2}, Landroid/app/StatusBarManager;->triggerCustomAction(II)V

    .line 991
    return-void
.end method

.method private onSlippedToAndFro(Z)V
    .locals 5
    .param p1, "isSingleSide"    # Z

    .prologue
    .line 880
    const-string/jumbo v1, "TouchFrameService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSlippedToAndFro "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-boolean v1, p0, Lcom/android/server/TouchFrameService;->mLocked:Z

    if-eqz v1, :cond_0

    .line 882
    const-string/jumbo v1, "TouchFrameService"

    const-string/jumbo v2, "onSlippedToAndFro but no reponse beacause of Game Dock Locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void

    .line 885
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 886
    .local v0, "mapLocation":Ljava/util/HashMap;
    const-string/jumbo v1, "Function"

    const-string/jumbo v2, "Clear"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string/jumbo v2, "Side"

    .line 888
    if-eqz p1, :cond_1

    const-string/jumbo v1, "One"

    .line 887
    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string/jumbo v1, "TouchFrame"

    sget-object v2, Landroid/util/JunkEvent;->TOUCH_FRAME_EVENT_ID_SLIPPED_TO_AND_FRO:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/JunkEvent;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/util/JunkLog;->ux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 890
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->clearBackgroundProcess()V

    .line 878
    return-void

    .line 888
    :cond_1
    const-string/jumbo v1, "Two"

    goto :goto_0
.end method

.method private onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    .line 1070
    .local v10, "index":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 1071
    .local v4, "ac":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1072
    .local v9, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 1073
    .local v6, "count":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1074
    .local v20, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1083
    .local v21, "y":I
    sget-boolean v22, Lcom/android/server/TouchFrameService;->DEBUG:Z

    if-eqz v22, :cond_0

    const-string/jumbo v22, "TouchFrameService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onTouchEvent "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " ac "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " index "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " id "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " count "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " x "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " y "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mThumbReceiver:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 1086
    .local v12, "msg":Landroid/os/Message;
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 1088
    .end local v12    # "msg":Landroid/os/Message;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 1310
    :cond_2
    :goto_0
    :pswitch_0
    const-string/jumbo v22, "TouchFrameService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "tp "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->tp:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/16 v22, 0x0

    return v22

    .line 1090
    :pswitch_1
    sget-boolean v22, Lcom/android/server/TouchFrameService;->DEBUG:Z

    if-eqz v22, :cond_3

    const-string/jumbo v22, "TouchFrameService"

    const-string/jumbo v23, "onTouchEvent ACTION_UP"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->tp:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "p$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TouchFrameService$TrackPoint;

    .line 1092
    .local v13, "p":Lcom/android/server/TouchFrameService$TrackPoint;
    iget-boolean v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    move/from16 v17, v0

    .line 1093
    .local v17, "prepressed":Z
    const-string/jumbo v22, "TouchFrameService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onTouchEvent ACTION_UP prepressed="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " mTwoFingersGesture="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1094
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mTwoFingersGesture:Z

    move/from16 v24, v0

    .line 1093
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1094
    const-string/jumbo v24, " mHasPerformedScreenshot="

    .line 1093
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1094
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedScreenshot:Z

    move/from16 v24, v0

    .line 1093
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1094
    const-string/jumbo v24, " mHasPerformedPaymentMenu="

    .line 1093
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1094
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedPaymentMenu:Z

    move/from16 v24, v0

    .line 1093
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcom/android/server/TouchFrameService$TrackPoint;->set(II)V

    .line 1096
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/server/TouchFrameService$TrackPoint;->setPressed(Z)V

    .line 1104
    const/4 v7, 0x0

    .line 1116
    .local v7, "delay":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedCombination:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mTwoFingersGesture:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedScreenshot:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedPaymentMenu:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 1117
    if-nez v17, :cond_8

    .line 1118
    const/16 v22, 0x32

    move/from16 v0, v22

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1119
    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/16 v23, -0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownY:I

    move/from16 v23, v0

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    .line 1120
    const-string/jumbo v22, "TouchFrameService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onMoveLeft "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveLeft:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " delay="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveLeft:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    int-to-long v0, v7

    move-wide/from16 v24, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1147
    :cond_5
    :goto_2
    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownY:I

    move/from16 v22, v0

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/16 v23, 0x19

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownY:I

    move/from16 v22, v0

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v23, v0

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 1149
    const-string/jumbo v22, "TouchFrameService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onMoveUp "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveUp:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " delay="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " mUseTouchPadMoveUP="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mUseTouchPadMoveUP:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveUp:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mGapLeft:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mGapRight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mUseTouchPadMoveUP:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    int-to-long v0, v7

    move-wide/from16 v24, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1132
    :cond_7
    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/16 v23, 0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownY:I

    move/from16 v23, v0

    iget v0, v13, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 1133
    const-string/jumbo v22, "TouchFrameService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onMoveRight "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveRight:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " delay="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedMoveRight:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    int-to-long v0, v7

    move-wide/from16 v24, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1156
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedLongPress:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0xc

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v11

    .line 1160
    .local v11, "keyguardLocked":Z
    const-string/jumbo v22, "TouchFrameService"

    const-string/jumbo v23, "Click"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1186
    .end local v7    # "delay":I
    .end local v11    # "keyguardLocked":Z
    .end local v13    # "p":Lcom/android/server/TouchFrameService$TrackPoint;
    .end local v17    # "prepressed":Z
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TouchFrameService;->mLastUp:J

    .line 1187
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TouchFrameService;->clear()V

    goto/16 :goto_0

    .line 1191
    .end local v14    # "p$iterator":Ljava/util/Iterator;
    :pswitch_2
    const-string/jumbo v22, "TouchFrameService"

    const-string/jumbo v23, "onTouchEvent ACTION_DOWN"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TouchFrameService;->clear()V

    .line 1193
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mGapMiddle:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    const/16 v19, 0x1

    .line 1194
    .local v19, "tempInLeft":Z
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TouchFrameService;->mLastDown:J

    .line 1202
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TouchFrameService;->mMotionDownX:I

    .line 1203
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TouchFrameService;->mMotionDownY:I

    .line 1204
    new-instance v13, Lcom/android/server/TouchFrameService$TrackPoint;

    invoke-direct {v13}, Lcom/android/server/TouchFrameService$TrackPoint;-><init>()V

    .line 1205
    .restart local v13    # "p":Lcom/android/server/TouchFrameService$TrackPoint;
    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Lcom/android/server/TouchFrameService$TrackPoint;->-wrap0(Lcom/android/server/TouchFrameService$TrackPoint;ZII)V

    .line 1206
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v9, v0, v1}, Lcom/android/server/TouchFrameService$TrackPoint;->set(III)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->tp:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x1f4

    const/16 v23, 0xc

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1193
    .end local v13    # "p":Lcom/android/server/TouchFrameService$TrackPoint;
    .end local v19    # "tempInLeft":Z
    :cond_a
    const/16 v19, 0x0

    .restart local v19    # "tempInLeft":Z
    goto :goto_3

    .line 1212
    .end local v19    # "tempInLeft":Z
    :pswitch_3
    sget-boolean v22, Lcom/android/server/TouchFrameService;->DEBUG:Z

    if-eqz v22, :cond_b

    const-string/jumbo v22, "TouchFrameService"

    const-string/jumbo v23, "onTouchEvent ACTION_POINTER_DOWN"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_b
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TouchFrameService;->mTwoFingersGesture:Z

    .line 1214
    new-instance v15, Lcom/android/server/TouchFrameService$TrackPoint;

    invoke-direct {v15}, Lcom/android/server/TouchFrameService$TrackPoint;-><init>()V

    .line 1215
    .local v15, "pD":Lcom/android/server/TouchFrameService$TrackPoint;
    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Lcom/android/server/TouchFrameService$TrackPoint;->-wrap0(Lcom/android/server/TouchFrameService$TrackPoint;ZII)V

    .line 1216
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v9, v0, v1}, Lcom/android/server/TouchFrameService$TrackPoint;->set(III)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->tp:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1223
    .end local v15    # "pD":Lcom/android/server/TouchFrameService$TrackPoint;
    :pswitch_4
    sget-boolean v22, Lcom/android/server/TouchFrameService;->DEBUG:Z

    if-eqz v22, :cond_c

    const-string/jumbo v22, "TouchFrameService"

    const-string/jumbo v23, "onTouchEvent ACTION_POINTER_UP"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->tp:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1230
    :pswitch_5
    sget-boolean v22, Lcom/android/server/TouchFrameService;->DEBUG:Z

    if-eqz v22, :cond_d

    const-string/jumbo v22, "TouchFrameService"

    const-string/jumbo v23, "onTouchEvent ACTION_CANCEL"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TouchFrameService;->clear()V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0xc

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1236
    :pswitch_6
    sget-boolean v22, Lcom/android/server/TouchFrameService;->DEBUG:Z

    if-eqz v22, :cond_e

    const-string/jumbo v22, "TouchFrameService"

    const-string/jumbo v23, "onTouchEvent ACTION_MOVE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->tp:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1238
    .local v18, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->tp:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TouchFrameService$TrackPoint;

    .line 1241
    .local v16, "pM":Lcom/android/server/TouchFrameService$TrackPoint;
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 1242
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    .line 1243
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    sub-int v22, v20, v22

    if-lez v22, :cond_17

    const/4 v5, 0x2

    .line 1244
    .local v5, "combinationCurrentDirection":I
    :goto_5
    sget-boolean v22, Lcom/android/server/TouchFrameService;->DEBUG:Z

    if-eqz v22, :cond_f

    const-string/jumbo v22, "TouchFrameService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mCombinationCurrentDirection="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mCombinationCurrentDirection:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1245
    const-string/jumbo v24, ",combinationCurrentDirection="

    .line 1244
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1245
    const-string/jumbo v24, ",x="

    .line 1244
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1246
    const-string/jumbo v24, ",pM.x="

    .line 1244
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1246
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v24, v0

    .line 1244
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1246
    const-string/jumbo v24, ",mCompareX="

    .line 1244
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mCompareX:I

    move/from16 v24, v0

    .line 1244
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1246
    const-string/jumbo v24, ",mChangeDirectionNum="

    .line 1244
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mChangeDirectionNum:I

    move/from16 v24, v0

    .line 1244
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mCombinationCurrentDirection:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v5, :cond_10

    .line 1248
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TouchFrameService;->mCompareX:I

    .line 1249
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TouchFrameService;->mChangeDirection:Z

    .line 1251
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mChangeDirection:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 1252
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_18

    .line 1253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mCompareX:I

    move/from16 v22, v0

    sub-int v22, v20, v22

    const/16 v23, -0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    .line 1254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mChangeDirectionNum:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TouchFrameService;->mChangeDirectionNum:I

    .line 1255
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TouchFrameService;->mChangeDirection:Z

    .line 1262
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/TouchFrameService;->mCombinationCurrentDirection:I

    .line 1263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedCombination:Z

    move/from16 v22, v0

    if-nez v22, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mChangeDirectionNum:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    .line 1264
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TouchFrameService;->mHasPerformedCombination:Z

    .line 1265
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/TouchFrameService;->onSlippedToAndFro(Z)V

    .line 1270
    .end local v5    # "combinationCurrentDirection":I
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    .line 1271
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    .line 1272
    const/16 v22, 0x3c

    const/16 v23, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/TouchFrameService;->pointInView(Lcom/android/server/TouchFrameService$TrackPoint;II)Z

    move-result v22

    if-nez v22, :cond_13

    .line 1273
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0xc

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 1276
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/TouchFrameService$TrackPoint;->setPressed(Z)V

    .line 1279
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mPaymentMenuSwith:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedPaymentMenu:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    .line 1287
    :cond_14
    :goto_7
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 1288
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mGapMiddle:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1c

    .line 1289
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/16 v23, -0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1b

    .line 1290
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TouchFrameService;->mLeftPanelMoveDirection:I

    .line 1301
    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedTwoFingersCloser:Z

    move/from16 v22, v0

    if-nez v22, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mLeftPanelMoveDirection:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mRightPanelMoveDirection:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 1302
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TouchFrameService;->onTwoFingersCloser()V

    .line 1238
    :cond_16
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 1243
    :cond_17
    const/4 v5, 0x1

    .restart local v5    # "combinationCurrentDirection":I
    goto/16 :goto_5

    .line 1256
    :cond_18
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v5, v0, :cond_11

    .line 1257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mCompareX:I

    move/from16 v22, v0

    sub-int v22, v20, v22

    const/16 v23, 0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    .line 1258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mChangeDirectionNum:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TouchFrameService;->mChangeDirectionNum:I

    .line 1259
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TouchFrameService;->mChangeDirection:Z

    goto/16 :goto_6

    .line 1280
    .end local v5    # "combinationCurrentDirection":I
    :cond_19
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mGapLeft:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1a

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mGapRight:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_14

    .line 1281
    :cond_1a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TouchFrameService;->mPaymentMenuSwith:Z

    .line 1282
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TouchFrameService;->mHasPerformedPaymentMenu:Z

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x9

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1291
    :cond_1b
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/16 v23, 0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_15

    .line 1292
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TouchFrameService;->mLeftPanelMoveDirection:I

    goto/16 :goto_8

    .line 1295
    :cond_1c
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/16 v23, -0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1d

    .line 1296
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TouchFrameService;->mRightPanelMoveDirection:I

    goto/16 :goto_8

    .line 1297
    :cond_1d
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/16 v23, 0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_15

    .line 1298
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TouchFrameService;->mRightPanelMoveDirection:I

    goto/16 :goto_8

    .line 1303
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TouchFrameService;->mHasPerformedTwoFingersSeparated:Z

    move/from16 v22, v0

    if-nez v22, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mLeftPanelMoveDirection:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TouchFrameService;->mRightPanelMoveDirection:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 1304
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TouchFrameService;->onTwoFingersSeparated()V

    goto/16 :goto_9

    .line 1088
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onTwoFingersCloser()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1015
    const-string/jumbo v1, "TouchFrameService"

    const-string/jumbo v2, "onTwoFingersCloser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TouchFrameService;->mHasPerformedTwoFingersCloser:Z

    .line 1017
    iget-boolean v1, p0, Lcom/android/server/TouchFrameService;->mLocked:Z

    if-eqz v1, :cond_0

    .line 1018
    const-string/jumbo v1, "TouchFrameService"

    const-string/jumbo v2, "onTwoFingersCloser but no reponse beacause of Game Dock Locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void

    .line 1021
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1022
    .local v0, "mapLocation":Ljava/util/HashMap;
    const-string/jumbo v1, "Function"

    const-string/jumbo v2, "SplitScreen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string/jumbo v1, "TouchFrame"

    sget-object v2, Landroid/util/JunkEvent;->TOUCH_FRAME_EVENT_ID_TWO_FINGERS_CLOSER:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/JunkEvent;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Landroid/util/JunkLog;->ux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1024
    iget-object v1, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/app/StatusBarManager;->triggerCustomAction(II)V

    .line 1013
    return-void
.end method

.method private onTwoFingersSeparated()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1029
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "onTwoFingersSeparated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iput-boolean v2, p0, Lcom/android/server/TouchFrameService;->mHasPerformedTwoFingersSeparated:Z

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/TouchFrameService;->mLocked:Z

    if-eqz v0, :cond_0

    .line 1032
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "onTwoFingersSeparated but no reponse beacause of Game Dock Locked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->triggerCustomAction(II)V

    .line 1027
    return-void
.end method

.method private openVoiceAsist()V
    .locals 4

    .prologue
    .line 946
    const-string/jumbo v2, "TouchFrameService"

    const-string/jumbo v3, "openVoiceAsist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 949
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.tencent.ai.cpawu.ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 951
    iget-object v2, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "TouchFrameService"

    const-string/jumbo v3, "No activity to open VoiceAsist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private pointInView(Lcom/android/server/TouchFrameService$TrackPoint;II)Z
    .locals 3
    .param p1, "p"    # Lcom/android/server/TouchFrameService$TrackPoint;
    .param p2, "slopX"    # I
    .param p3, "slopY"    # I

    .prologue
    const/4 v0, 0x0

    .line 848
    iget v1, p1, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    iget v2, p1, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p2, :cond_0

    iget v1, p1, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    iget v2, p1, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 685
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v4, "mFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 689
    .local v5, "mFileReader":Ljava/io/FileReader;
    const/16 v7, 0x80

    new-array v1, v7, [C
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 691
    .local v1, "data":[C
    const/4 v6, 0x0

    .line 693
    .local v6, "status":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileReader;->read([C)I

    move-result v0

    .line 694
    .local v0, "charCount":I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 695
    .local v6, "status":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v7

    .line 696
    .end local v0    # "charCount":I
    .end local v6    # "status":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 697
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v7, "TouchFrameService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 702
    .end local v1    # "data":[C
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "mFileReader":Ljava/io/FileReader;
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 699
    :catch_1
    move-exception v2

    .line 700
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v7, "TouchFrameService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerKeyModeSettingObserver()V
    .locals 5

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 580
    const-string/jumbo v1, "touchframe_keymode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 581
    new-instance v2, Lcom/android/server/TouchFrameService$3;

    iget-object v3, p0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/TouchFrameService$3;-><init>(Lcom/android/server/TouchFrameService;Landroid/os/Handler;)V

    .line 580
    const/4 v3, 0x1

    .line 586
    const/4 v4, -0x1

    .line 579
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 578
    return-void
.end method

.method private sendEvent(III)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I

    .prologue
    .line 853
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TouchFrameService;->sendEvent(IIIJ)V

    .line 851
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 782
    const-string/jumbo v1, "TouchFrameService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/android/server/TouchFrameService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 784
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 780
    return-void
.end method

.method private startScreenshotService()V
    .locals 4

    .prologue
    .line 329
    const-string/jumbo v2, "TouchFrameService"

    const-string/jumbo v3, "startScreenshotService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 331
    const-string/jumbo v3, "com.journeyui.systemui.screenshot.ScreenshotService"

    .line 330
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 334
    iget-object v2, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 328
    return-void
.end method

.method private stopSystemLockTaskMode()V
    .locals 3

    .prologue
    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TouchFrameService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    const-string/jumbo v1, "TouchFrameService"

    const-string/jumbo v2, "stop Lock Task Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v1, p0, Lcom/android/server/TouchFrameService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TouchFrameService"

    const-string/jumbo v2, "Unable to reach activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private switchPreviousApp()Z
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 307
    iget-object v5, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 308
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v7, v7}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    .line 309
    .local v4, "running":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 310
    return v9

    .line 311
    :cond_0
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 312
    .local v1, "current":Landroid/content/ComponentName;
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v5, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 313
    .local v3, "previous":Landroid/content/ComponentName;
    const-string/jumbo v5, "TouchFrameService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SwitchPreviousApp current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " previous="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/server/TouchFrameService;->mActivityManager:Landroid/app/IActivityManager;

    if-eqz v5, :cond_1

    .line 316
    :try_start_0
    iget-object v6, p0, Lcom/android/server/TouchFrameService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    return v8

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return v9
.end method

.method private updateKeyModeFromSettings()V
    .locals 4

    .prologue
    .line 573
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/TouchFrameService;->getKeyModeSetting(I)I

    move-result v0

    .line 574
    .local v0, "keyMode":I
    const-string/jumbo v1, "TouchFrameService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateKeyModeFromSettings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iput v0, p0, Lcom/android/server/TouchFrameService;->mKeyMode:I

    .line 572
    return-void
.end method

.method private write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 708
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 709
    .local v1, "os":Ljava/io/OutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 710
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 711
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    const/4 v2, 0x1

    return v2

    .line 712
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public interceptTouchEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/InputEvent;

    .prologue
    .line 756
    iget-boolean v1, p0, Lcom/android/server/TouchFrameService;->mSystemReady:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/TouchFrameService;->mScreenOn:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/TouchFrameService;->mPaymentMenuSwith:Z

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p1

    .line 760
    check-cast v0, Landroid/view/MotionEvent;

    .line 761
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x1002

    if-ne v1, v2, :cond_2

    .line 762
    invoke-direct {p0, v0}, Lcom/android/server/TouchFrameService;->interceptTouchScreenEvent(Landroid/view/MotionEvent;)V

    .line 754
    :goto_0
    return-void

    .line 757
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_1
    const-string/jumbo v1, "TouchFrameService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSystemReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/TouchFrameService;->mSystemReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/TouchFrameService;->mScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void

    .line 764
    .restart local v0    # "event":Landroid/view/MotionEvent;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/TouchFrameService;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 917
    iget-object v1, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    .line 916
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 620
    const-string/jumbo v0, "TouchFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 622
    invoke-virtual {p0}, Lcom/android/server/TouchFrameService;->systemRunning()V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->startScreenshotService()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 614
    const-string/jumbo v0, "touchframe"

    new-instance v1, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;-><init>(Lcom/android/server/TouchFrameService;Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/TouchFrameService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 612
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I
    .param p4, "when"    # J

    .prologue
    .line 858
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/TouchFrameService;->sendEvent(IIIJI)V

    .line 856
    return-void
.end method

.method sendEvent(IIIJI)V
    .locals 16
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I
    .param p4, "when"    # J
    .param p6, "metaState"    # I

    .prologue
    .line 863
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    .line 864
    .local v10, "repeatCount":I
    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 866
    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v14, v2, 0x40

    .line 865
    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 867
    const/16 v15, 0x101

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    move/from16 v11, p6

    .line 864
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 868
    .local v3, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 869
    const/4 v4, 0x0

    .line 868
    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 861
    return-void

    .line 863
    .end local v3    # "ev":Landroid/view/KeyEvent;
    .end local v10    # "repeatCount":I
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "repeatCount":I
    goto :goto_0
.end method

.method public setInputManagerService(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/server/TouchFrameService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 599
    return-void
.end method

.method public systemRunning()V
    .locals 2

    .prologue
    .line 630
    const-string/jumbo v0, "TouchFrameService"

    const-string/jumbo v1, "systemRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TouchFrameService;->mUiHandler:Landroid/os/Handler;

    .line 632
    invoke-direct {p0}, Lcom/android/server/TouchFrameService;->init()V

    .line 633
    const-string/jumbo v0, "/sys/touchscreen/touch_chip_info"

    invoke-direct {p0, v0}, Lcom/android/server/TouchFrameService;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TouchFrameService;->tpInfo:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/server/TouchFrameService;->tpInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 635
    const-string/jumbo v0, "sys.tp.info"

    iget-object v1, p0, Lcom/android/server/TouchFrameService;->tpInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TouchFrameService;->mSystemReady:Z

    .line 628
    return-void
.end method
