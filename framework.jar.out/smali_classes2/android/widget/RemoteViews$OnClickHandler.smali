.class public Landroid/widget/RemoteViews$OnClickHandler;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickHandler"
.end annotation


# instance fields
.field private mEnterAnimationId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 255
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "launchStackId"    # I

    .prologue
    .line 262
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 264
    .local v1, "context":Landroid/content/Context;
    new-instance v11, Landroid/util/PerformanceManager;

    invoke-direct {v11}, Landroid/util/PerformanceManager;-><init>()V

    .line 266
    .local v11, "mPerMgr":Landroid/util/PerformanceManager;
    iget v2, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    if-eqz v2, :cond_3

    .line 267
    iget v2, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 274
    .local v12, "opts":Landroid/app/ActivityOptions;
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_1

    .line 275
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 276
    const/4 v2, 0x3

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_4

    .line 277
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v12, v2}, Landroid/app/ActivityOptions;->setSplitModeOption(I)V

    .line 278
    const v2, 0xd04804

    invoke-virtual {v11, v2}, Landroid/util/PerformanceManager;->notify(I)V

    .line 293
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 295
    invoke-virtual {v12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 294
    const/high16 v4, 0x10000000

    .line 295
    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    move-object/from16 v3, p3

    .line 292
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 296
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 297
    const v2, 0xd04805

    invoke-virtual {v11, v2}, Landroid/util/PerformanceManager;->notify(I)V

    .line 309
    :cond_2
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 271
    .end local v12    # "opts":Landroid/app/ActivityOptions;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 270
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 269
    invoke-static {p1, v4, v5, v2, v3}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v12

    .restart local v12    # "opts":Landroid/app/ActivityOptions;
    goto :goto_0

    .line 279
    :cond_4
    const/4 v2, 0x5

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 281
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Landroid/app/ActivityOptions;->addFloatModeOption(I)V

    .line 282
    const/16 v2, 0x10

    invoke-virtual {v12, v2}, Landroid/app/ActivityOptions;->addFloatModeOption(I)V

    .line 283
    const v2, 0xd0480a

    invoke-virtual {v11, v2}, Landroid/util/PerformanceManager;->notify(I)V

    .line 284
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v10, "junkmap":Ljava/util/HashMap;
    const-string/jumbo v2, "floated_entry_type"

    const-string/jumbo v3, "Notification"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v2, "floated_entry_time"

    .line 287
    invoke-static {}, Landroid/util/JunkEvent;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v2, "MultiWindow"

    .line 289
    sget-object v3, Landroid/util/JunkEvent;->MULTI_WINDOW_EVENT_ID_9:Ljava/lang/String;

    .line 288
    invoke-static {v2, v3, v10}, Landroid/util/JunkEvent;->sendJunkMsg(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 301
    .end local v1    # "context":Landroid/content/Context;
    .end local v10    # "junkmap":Ljava/util/HashMap;
    .end local v11    # "mPerMgr":Landroid/util/PerformanceManager;
    .end local v12    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v8

    .line 302
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v2, "RemoteViews"

    const-string/jumbo v3, "Cannot send pending intent: "

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    const/4 v2, 0x0

    return v2

    .line 298
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v11    # "mPerMgr":Landroid/util/PerformanceManager;
    .restart local v12    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    const/4 v2, 0x5

    move/from16 v0, p4

    if-ne v0, v2, :cond_2

    .line 299
    const v2, 0xd0480b

    :try_start_1
    invoke-virtual {v11, v2}, Landroid/util/PerformanceManager;->notify(I)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 304
    .end local v1    # "context":Landroid/content/Context;
    .end local v11    # "mPerMgr":Landroid/util/PerformanceManager;
    .end local v12    # "opts":Landroid/app/ActivityOptions;
    :catch_1
    move-exception v9

    .line 305
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RemoteViews"

    const-string/jumbo v3, "Cannot send pending intent due to unknown exception: "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    const/4 v2, 0x0

    return v2
.end method

.method public setEnterAnimationId(I)V
    .locals 0
    .param p1, "enterAnimationId"    # I

    .prologue
    .line 313
    iput p1, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    .line 312
    return-void
.end method
