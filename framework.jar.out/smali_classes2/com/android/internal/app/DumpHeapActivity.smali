.class public Lcom/android/internal/app/DumpHeapActivity;
.super Landroid/app/Activity;
.source "DumpHeapActivity.java"


# static fields
.field public static final ACTION_DELETE_DUMPHEAP:Ljava/lang/String; = "com.android.server.am.DELETE_DUMPHEAP"

.field public static final EXTRA_DELAY_DELETE:Ljava/lang/String; = "delay_delete"

.field public static final JAVA_URI:Landroid/net/Uri;

.field public static final KEY_DIRECT_LAUNCH:Ljava/lang/String; = "direct_launch"

.field public static final KEY_PROCESS:Ljava/lang/String; = "process"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"


# instance fields
.field mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

.field mHandled:Z

.field mProcess:Ljava/lang/String;

.field mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "content://com.android.server.heapdump/java"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "process"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mProcess:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "size"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mSize:J

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "direct_launch"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "directLaunch":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 68
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.app.action.REPORT_HEAP_LIMIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "Heap Dump"

    sget-object v6, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    invoke-static {v4, v5, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 71
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 72
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v4, "android.intent.extra.STREAM"

    sget-object v5, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->scheduleDelete()V

    .line 78
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "DumpHeapActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to direct launch to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    const-string/jumbo v6, ": "

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v4, Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-direct {v4, p0}, Lcom/zeusis/widget/dialog/ZeusisDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 118
    iget-object v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    const v5, 0x10403d0

    invoke-virtual {v4, v5}, Lcom/zeusis/widget/dialog/BaseDialog;->title(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 119
    iget-object v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 120
    iget-object v6, p0, Lcom/android/internal/app/DumpHeapActivity;->mProcess:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-wide v6, p0, Lcom/android/internal/app/DumpHeapActivity;->mSize:J

    invoke-static {v6, v7, v10}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 119
    const v6, 0x10403d1

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zeusis/widget/dialog/ZeusisDialog;->message(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 121
    iget-object v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 122
    iget-object v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    new-instance v5, Lcom/android/internal/app/DumpHeapActivity$1;

    invoke-direct {v5, p0}, Lcom/android/internal/app/DumpHeapActivity$1;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    invoke-virtual {v4, v5}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 130
    iget-object v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 131
    iget-object v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    new-instance v5, Lcom/android/internal/app/DumpHeapActivity$2;

    invoke-direct {v5, p0}, Lcom/android/internal/app/DumpHeapActivity$2;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    invoke-virtual {v4, v5}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 147
    iget-object v4, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/BaseDialog;->dismiss()V

    .line 167
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-boolean v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    :cond_0
    return-void
.end method

.method scheduleDelete()V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "broadcast":Landroid/content/Intent;
    const-string/jumbo v1, "delay_delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
