.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/TaskPositioner;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "choreographer"    # Landroid/view/Choreographer;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 125
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 130
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 132
    :cond_0
    return-void

    :cond_1
    move-object v10, p1

    .line 134
    check-cast v10, Landroid/view/MotionEvent;

    .line 135
    .local v10, "motionEvent":Landroid/view/MotionEvent;
    const/4 v9, 0x0

    .line 138
    .local v9, "handled":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const/4 v9, 0x1

    .line 242
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 143
    return-void

    .line 146
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    .line 147
    .local v11, "newX":F
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    .line 149
    .local v12, "newY":F
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 204
    :cond_3
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v13

    .line 206
    .local v13, "wasResizing":Z
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-wrap1(Lcom/android/server/wm/TaskPositioner;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    if-eqz v13, :cond_4

    .line 213
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFloatedWorkspace()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v2

    .line 214
    const/4 v1, 0x5

    .line 215
    const/4 v3, 0x1

    .line 216
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 217
    const/4 v6, -0x1

    .line 214
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 224
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 226
    const/4 v2, 0x0

    .line 228
    .local v2, "createMode":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 229
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 230
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 228
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    .end local v2    # "createMode":I
    :cond_5
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 238
    .end local v13    # "wasResizing":Z
    :cond_6
    const/4 v9, 0x1

    .line 242
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 129
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :goto_4
    return-void

    .line 160
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :pswitch_1
    :try_start_6
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 161
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3, v11, v12}, Lcom/android/server/wm/TaskPositioner;->-wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v1

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    const-string/jumbo v0, "wm.TaskPositioner.resizeTask"

    .line 165
    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 168
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFloatedWorkspace()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v2

    .line 169
    const/4 v1, 0x5

    .line 170
    const/4 v3, 0x1

    .line 171
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 172
    const/4 v6, -0x1

    .line 169
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 179
    :goto_5
    const-wide/16 v0, 0x20

    :try_start_a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 239
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :catch_0
    move-exception v8

    .line 240
    .local v8, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Exception caught by drag handleMotion"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 242
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_4

    .line 160
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :catchall_0
    move-exception v0

    :try_start_c
    monitor-exit v1

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 241
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :catchall_1
    move-exception v0

    .line 242
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 241
    throw v0

    .line 174
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :cond_7
    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    .line 174
    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    .line 177
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_5

    .line 187
    .end local v7    # "e":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_e
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFloatedWorkspace()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    float-to-int v1, v11

    float-to-int v3, v12

    invoke-static {v0, v1, v3}, Lcom/android/server/wm/TaskPositioner;->-wrap2(Lcom/android/server/wm/TaskPositioner;II)V

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_0

    .line 197
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFloatedWorkspace()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    float-to-int v1, v11

    float-to-int v3, v12

    invoke-static {v0, v1, v3}, Lcom/android/server/wm/TaskPositioner;->-wrap2(Lcom/android/server/wm/TaskPositioner;II)V

    .line 200
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_0

    .line 206
    .restart local v13    # "wasResizing":Z
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 219
    :cond_a
    :try_start_f
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 220
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x3

    .line 219
    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_1

    .line 232
    :catch_2
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 227
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_b
    const/4 v2, 0x1

    .restart local v2    # "createMode":I
    goto/16 :goto_2

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
