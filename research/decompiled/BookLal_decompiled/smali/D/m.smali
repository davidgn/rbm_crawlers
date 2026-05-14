.class public final synthetic LD/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LD/m;->a:I

    iput-object p2, p0, LD/m;->b:Ljava/lang/Object;

    iput-object p3, p0, LD/m;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, LD/m;->c:Ljava/lang/Object;

    iget-object v3, p0, LD/m;->b:Ljava/lang/Object;

    iget v4, p0, LD/m;->a:I

    packed-switch v4, :pswitch_data_0

    check-cast v3, Landroidx/profileinstaller/ProfileInstallerInitializer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ls0/g;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x3e8

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    new-instance v4, Lh/k;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v4, v2, v1}, Lh/k;-><init>(Landroid/content/Context;I)V

    add-int/lit16 v3, v3, 0x1388

    int-to-long v1, v3

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    check-cast v2, Ljava/lang/Runnable;

    check-cast v3, Lh/F;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lh/F;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lh/F;->a()V

    throw v0

    :pswitch_1
    check-cast v3, Lcom/google/firebase/firestore/core/FirestoreClient;

    check-cast v2, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/firebase/firestore/core/FirestoreClient;->p(Lcom/google/firebase/firestore/core/FirestoreClient;Ljava/util/List;)V

    return-void

    :pswitch_2
    check-cast v3, Lcom/google/firebase/firestore/core/FirestoreClient;

    check-cast v2, Lcom/google/firebase/firestore/auth/User;

    invoke-static {v3, v2}, Lcom/google/firebase/firestore/core/FirestoreClient;->s(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/auth/User;)V

    return-void

    :pswitch_3
    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast v3, Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-static {v3, v2}, Lcom/google/firebase/firestore/core/FirestoreClient;->r(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_4
    check-cast v3, Landroid/app/Activity;

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v3, v2}, Lcom/google/firebase/firestore/core/ActivityScope;->b(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    check-cast v3, Landroidx/fragment/app/F;

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v3, v2}, Lcom/google/firebase/firestore/core/ActivityScope;->a(Landroidx/fragment/app/F;Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    check-cast v3, Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    check-cast v2, Lcom/google/firebase/internal/InternalTokenResult;

    invoke-static {v3, v2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->c(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V

    return-void

    :pswitch_7
    check-cast v3, Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    check-cast v2, Lcom/google/firebase/appcheck/AppCheckTokenResult;

    invoke-static {v3, v2}, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->f(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V

    return-void

    :pswitch_8
    check-cast v3, Landroidx/fragment/app/F;

    check-cast v2, Landroidx/activity/G;

    invoke-static {v3, v2}, Landroidx/activity/p;->access$addObserverForBackInvoker(Landroidx/activity/p;Landroidx/activity/G;)V

    return-void

    :pswitch_9
    sget v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    check-cast v2, Landroid/app/job/JobParameters;

    invoke-virtual {v3, v2, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_a
    check-cast v3, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    const-string v4, "Block API failed: "

    const-string v5, "Bearer "

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "uid"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, LY0/X0;->a:LC4/A;

    invoke-static {v3, v6}, LW2/B;->j(Ljava/lang/String;LC4/A;)LC4/G;

    move-result-object v3

    new-instance v6, LC4/E;

    invoke-direct {v6}, LC4/E;-><init>()V

    const-string v7, "https://api.bitactro.com/api/disable-user"

    invoke-virtual {v6, v7}, LC4/E;->p(Ljava/lang/String;)V

    const-string v7, "Authorization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, LC4/E;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "POST"

    invoke-virtual {v6, v2, v3}, LC4/E;->j(Ljava/lang/String;LC4/G;)V

    invoke-virtual {v6}, LC4/E;->b()LC4/F;

    move-result-object v2

    sget-object v3, LY0/X0;->b:LC4/C;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, LG4/i;

    invoke-direct {v5, v3, v2}, LG4/i;-><init>(LC4/C;LC4/F;)V

    invoke-virtual {v5}, LG4/i;->f()LC4/I;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget v3, v2, LC4/I;->d:I

    const/16 v5, 0xc8

    if-gt v5, v3, :cond_1

    const/16 v5, 0x12c

    if-ge v3, v5, :cond_1

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    :try_start_2
    const-string v0, "UserSecurityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v2}, LC4/I;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void

    :pswitch_b
    check-cast v3, LD/b;

    check-cast v2, Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, LD/b;->e(Landroid/graphics/Typeface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
