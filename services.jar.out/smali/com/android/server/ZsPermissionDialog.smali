.class Lcom/android/server/ZsPermissionDialog;
.super Lcom/zeusis/widget/dialog/AskAgainDialog;
.source "ZsPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ZsPermissionDialog$CheckboxChangeListener;,
        Lcom/android/server/ZsPermissionDialog$NegativeOnclickListener;,
        Lcom/android/server/ZsPermissionDialog$PositiveOnclickListener;
    }
.end annotation


# static fields
.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_ASK:I = 0x6

.field static final ACTION_IGNORED:I = 0x4

.field static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field static final DISMISS_TIMEOUT:J = 0x1b58L

.field private static final TAG:Ljava/lang/String; = "ZsPermissionDialog"


# instance fields
.field private final mCode:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerTimer:Landroid/os/Handler;

.field private mIsSpecial:Z

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/String;

.field private mPositiveCount:I

.field private mRes:Landroid/content/res/Resources;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mUiHandler:Landroid/os/Handler;

.field private mUid:I


# direct methods
.method static synthetic -get0(Lcom/android/server/ZsPermissionDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ZsPermissionDialog;->mCode:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/ZsPermissionDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/ZsPermissionDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog;->mHandlerTimer:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/ZsPermissionDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ZsPermissionDialog;->mIsSpecial:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/ZsPermissionDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/ZsPermissionDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ZsPermissionDialog;->mPositiveCount:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/ZsPermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog;->mService:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/ZsPermissionDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/ZsPermissionDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ZsPermissionDialog;->mUid:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/ZsPermissionDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/ZsPermissionDialog;->mPositiveCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/ZsPermissionDialog;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ZsPermissionDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AppOpsService;
    .param p3, "code"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    const/high16 v3, 0x20000

    .line 77
    invoke-direct {p0, p1}, Lcom/zeusis/widget/dialog/AskAgainDialog;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ZsPermissionDialog;->mPositiveCount:I

    .line 78
    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 81
    iput-object p1, p0, Lcom/android/server/ZsPermissionDialog;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ZsPermissionDialog;->mRes:Landroid/content/res/Resources;

    .line 84
    iput-object p2, p0, Lcom/android/server/ZsPermissionDialog;->mService:Lcom/android/server/AppOpsService;

    .line 85
    iput p3, p0, Lcom/android/server/ZsPermissionDialog;->mCode:I

    .line 86
    iput-object p5, p0, Lcom/android/server/ZsPermissionDialog;->mPackageName:Ljava/lang/String;

    .line 87
    iput p4, p0, Lcom/android/server/ZsPermissionDialog;->mUid:I

    .line 88
    iget-object v1, p0, Lcom/android/server/ZsPermissionDialog;->mRes:Landroid/content/res/Resources;

    .line 89
    const v2, 0x107007b

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ZsPermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 90
    invoke-static {p5, p3}, Landroid/app/ZsAppOpsUtils;->isSpecialDialog(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ZsPermissionDialog;->mIsSpecial:Z

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ZsPermissionDialog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v1, Lcom/android/server/ZsPermissionDialog$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/ZsPermissionDialog$1;-><init>(Lcom/android/server/ZsPermissionDialog;Landroid/os/Looper;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/android/server/ZsPermissionDialog;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v1, Lcom/android/server/ZsPermissionDialog$2;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ZsPermissionDialog$2;-><init>(Lcom/android/server/ZsPermissionDialog;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ZsPermissionDialog;->mHandlerTimer:Landroid/os/Handler;

    .line 143
    new-instance v1, Lcom/android/server/ZsPermissionDialog$3;

    invoke-direct {v1, p0}, Lcom/android/server/ZsPermissionDialog$3;-><init>(Lcom/android/server/ZsPermissionDialog;)V

    iput-object v1, p0, Lcom/android/server/ZsPermissionDialog;->mUiHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/ZsPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 221
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2200

    .line 220
    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 223
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v4

    .line 229
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v4
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/ZsPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 257
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2200

    .line 256
    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 259
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v4

    .line 265
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v4
.end method

.method private getOpIconId(Landroid/content/res/Resources;)I
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 233
    const v1, 0x107007c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, "icons":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/android/server/ZsPermissionDialog;->mCode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    return v1
.end method

.method private getTimeText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 239
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-lez p2, :cond_1

    .line 240
    const-string/jumbo v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 242
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 249
    .end local v0    # "index":I
    :cond_1
    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Lcom/zeusis/widget/dialog/AskAgainDialog;->dismissImmediately()V

    .line 302
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/zeusis/widget/dialog/AskAgainDialog;->onCreate(Landroid/os/Bundle;)V

    .line 164
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/ZsPermissionDialog;->setCancelable(Z)V

    .line 165
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/ZsPermissionDialog;->setCanceledOnTouchOutside(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x20000

    .line 168
    const/high16 v11, 0x20000

    .line 167
    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 172
    iget-boolean v9, p0, Lcom/android/server/ZsPermissionDialog;->mIsSpecial:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/ZsPermissionDialog;->mContext:Landroid/content/Context;

    const v10, 0x1040639

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "allow":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/server/ZsPermissionDialog;->mContext:Landroid/content/Context;

    const v10, 0x1040483

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "deny":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/ZsPermissionDialog;->positiveAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/server/ZsPermissionDialog;->negativeAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 178
    new-instance v7, Lcom/android/server/ZsPermissionDialog$PositiveOnclickListener;

    invoke-direct {v7, p0}, Lcom/android/server/ZsPermissionDialog$PositiveOnclickListener;-><init>(Lcom/android/server/ZsPermissionDialog;)V

    .line 179
    .local v7, "positiveOnclickListener":Lcom/android/server/ZsPermissionDialog$PositiveOnclickListener;
    new-instance v6, Lcom/android/server/ZsPermissionDialog$NegativeOnclickListener;

    invoke-direct {v6, p0}, Lcom/android/server/ZsPermissionDialog$NegativeOnclickListener;-><init>(Lcom/android/server/ZsPermissionDialog;)V

    .line 180
    .local v6, "negativeOnclickListener":Lcom/android/server/ZsPermissionDialog$NegativeOnclickListener;
    invoke-virtual {p0, v7}, Lcom/android/server/ZsPermissionDialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 181
    invoke-virtual {p0, v6}, Lcom/android/server/ZsPermissionDialog;->negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 184
    iget-object v9, p0, Lcom/android/server/ZsPermissionDialog;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/ZsPermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 186
    iget-object v5, p0, Lcom/android/server/ZsPermissionDialog;->mPackageName:Ljava/lang/String;

    .line 189
    :cond_0
    iget-object v9, p0, Lcom/android/server/ZsPermissionDialog;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 190
    const/4 v11, 0x0

    aput-object v5, v10, v11

    iget-object v11, p0, Lcom/android/server/ZsPermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget v12, p0, Lcom/android/server/ZsPermissionDialog;->mCode:I

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 189
    const v11, 0x104067c

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/ZsPermissionDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/AskAgainDialog;

    .line 194
    iget-object v9, p0, Lcom/android/server/ZsPermissionDialog;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v9}, Lcom/android/server/ZsPermissionDialog;->getOpIconId(Landroid/content/res/Resources;)I

    move-result v3

    .line 195
    .local v3, "icon":I
    invoke-virtual {p0, v3}, Lcom/android/server/ZsPermissionDialog;->setMessageIcon(I)Lcom/zeusis/widget/dialog/AskAgainDialog;

    .line 198
    new-instance v1, Lcom/android/server/ZsPermissionDialog$CheckboxChangeListener;

    invoke-direct {v1, p0}, Lcom/android/server/ZsPermissionDialog$CheckboxChangeListener;-><init>(Lcom/android/server/ZsPermissionDialog;)V

    .line 199
    .local v1, "checkboxChangeListener":Lcom/android/server/ZsPermissionDialog$CheckboxChangeListener;
    iget-boolean v9, p0, Lcom/android/server/ZsPermissionDialog;->mIsSpecial:Z

    if-eqz v9, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialog;->getCheckbox()Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->setChecked(Z)V

    .line 204
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialog;->getCheckbox()Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    const/16 v9, 0xa

    iput v9, p0, Lcom/android/server/ZsPermissionDialog;->mPositiveCount:I

    .line 208
    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialog;->getNegativeAction()Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 209
    .local v8, "text":Ljava/lang/String;
    iget v9, p0, Lcom/android/server/ZsPermissionDialog;->mPositiveCount:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/ZsPermissionDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/ZsPermissionDialog;->negativeAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 210
    iget-object v9, p0, Lcom/android/server/ZsPermissionDialog;->mHandlerTimer:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    const/16 v12, 0x64

    invoke-virtual {v9, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    iget-object v9, p0, Lcom/android/server/ZsPermissionDialog;->mTitle:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/ZsPermissionDialog;->setActionMarginTop(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 162
    return-void

    .line 172
    .end local v0    # "allow":Ljava/lang/String;
    .end local v1    # "checkboxChangeListener":Lcom/android/server/ZsPermissionDialog$CheckboxChangeListener;
    .end local v2    # "deny":Ljava/lang/String;
    .end local v3    # "icon":I
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "negativeOnclickListener":Lcom/android/server/ZsPermissionDialog$NegativeOnclickListener;
    .end local v7    # "positiveOnclickListener":Lcom/android/server/ZsPermissionDialog$PositiveOnclickListener;
    .end local v8    # "text":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/server/ZsPermissionDialog;->mContext:Landroid/content/Context;

    const v10, 0x1040482

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "allow":Ljava/lang/String;
    goto/16 :goto_0

    .line 202
    .restart local v1    # "checkboxChangeListener":Lcom/android/server/ZsPermissionDialog$CheckboxChangeListener;
    .restart local v2    # "deny":Ljava/lang/String;
    .restart local v3    # "icon":I
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "negativeOnclickListener":Lcom/android/server/ZsPermissionDialog$NegativeOnclickListener;
    .restart local v7    # "positiveOnclickListener":Lcom/android/server/ZsPermissionDialog$PositiveOnclickListener;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ZsPermissionDialog;->getCheckbox()Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->setChecked(Z)V

    goto :goto_1
.end method

.method public show()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Lcom/zeusis/widget/dialog/AskAgainDialog;->show()V

    .line 297
    return-void
.end method
