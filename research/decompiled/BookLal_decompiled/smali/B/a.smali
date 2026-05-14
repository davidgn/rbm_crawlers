.class public final synthetic LB/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LB/a;->a:I

    iput-object p1, p0, LB/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    const v0, 0x10008000

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, v1, LB/a;->a:I

    packed-switch v7, :pswitch_data_0

    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/installations/FirebaseInstallations;

    invoke-static {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->d(Lcom/google/firebase/installations/FirebaseInstallations;)V

    return-void

    :pswitch_0
    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->a(Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;)V

    return-void

    :pswitch_1
    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/core/TransactionRunner;

    invoke-static {v0}, Lcom/google/firebase/firestore/core/TransactionRunner;->b(Lcom/google/firebase/firestore/core/TransactionRunner;)V

    return-void

    :pswitch_2
    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/ListenerRegistration;

    invoke-interface {v0}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    return-void

    :pswitch_3
    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/G;

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v0, Landroidx/lifecycle/G;->b:I

    iget-object v3, v0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/v;

    if-nez v2, :cond_0

    iput-boolean v5, v0, Landroidx/lifecycle/G;->c:Z

    sget-object v2, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    :cond_0
    iget v2, v0, Landroidx/lifecycle/G;->a:I

    if-nez v2, :cond_1

    iget-boolean v2, v0, Landroidx/lifecycle/G;->c:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iput-boolean v5, v0, Landroidx/lifecycle/G;->d:Z

    :cond_1
    return-void

    :pswitch_4
    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/emoji2/text/n;

    const-string v0, "fetchFonts result is not OK. ("

    iget-object v4, v2, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Landroidx/emoji2/text/n;->m:LS4/b;

    if-nez v5, :cond_2

    monitor-exit v4

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Landroidx/emoji2/text/n;->c()LJ/h;

    move-result-object v4

    iget v5, v4, LJ/h;->e:I

    if-ne v5, v3, :cond_3

    iget-object v3, v2, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_3

    :cond_3
    :goto_0
    if-nez v5, :cond_6

    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    sget v3, LI/o;->a:I

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v2, Landroidx/emoji2/text/n;->c:Ly3/c;

    iget-object v3, v2, Landroidx/emoji2/text/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v4}, [LJ/h;

    move-result-object v0

    sget-object v5, LE/g;->a:LL4/d;

    invoke-virtual {v5, v3, v0, v6}, LL4/d;->j(Landroid/content/Context;[LJ/h;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v3, v2, Landroidx/emoji2/text/n;->a:Landroid/content/Context;

    iget-object v4, v4, LJ/h;->a:Landroid/net/Uri;

    invoke-static {v3, v4}, LL4/l;->w(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    :try_start_5
    const-string v4, "EmojiCompat.MetadataRepo.create"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v4, LR0/i;

    invoke-static {v3}, LW2/B;->w(Ljava/nio/MappedByteBuffer;)Lb0/b;

    move-result-object v3

    invoke-direct {v4, v0, v3}, LR0/i;-><init>(Landroid/graphics/Typeface;Lb0/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v3, v2, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v0, v2, Landroidx/emoji2/text/n;->m:LS4/b;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, LS4/b;->y(LR0/i;)V

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v2}, Landroidx/emoji2/text/n;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :goto_2
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_4
    move-exception v0

    :try_start_c
    sget v3, LI/o;->a:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Unable to open file."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    sget v3, LI/o;->a:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_3
    iget-object v3, v2, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    iget-object v4, v2, Landroidx/emoji2/text/n;->m:LS4/b;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v0}, LS4/b;->x(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_6
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_4
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-virtual {v2}, Landroidx/emoji2/text/n;->b()V

    :goto_5
    return-void

    :goto_6
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :goto_7
    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v0

    :pswitch_5
    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/q;

    invoke-static {v0}, Landroidx/activity/q;->a(Landroidx/activity/q;)V

    return-void

    :pswitch_6
    const-string v0, "this$0"

    iget-object v3, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/activity/l;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v3, Landroidx/activity/l;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, v3, Landroidx/activity/l;->b:Ljava/lang/Runnable;

    :cond_8
    return-void

    :pswitch_7
    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, LY1/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LQ1/b;

    invoke-direct {v2, v0, v4}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, LY1/m;->d:La2/c;

    check-cast v0, LZ1/h;

    invoke-virtual {v0, v2}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    return-void

    :pswitch_8
    sget v2, Lcom/booklal/booklal/SearchPage;->K:I

    iget-object v2, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v2, Lcom/booklal/booklal/SearchPage;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/booklal/booklal/MainActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_9
    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v2, v0, Lcom/booklal/booklal/RewardAdActivity;->e:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v2, :cond_9

    const-string v2, "RewardedAdActivity"

    const-string v3, "Timeout: Rewarded ad not loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/booklal/booklal/RewardAdActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/booklal/booklal/RewardAdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v2, "Try Again"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :pswitch_a
    sget-object v0, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v0, v0, Lcom/booklal/booklal/MainActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void

    :pswitch_b
    iget-object v2, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v2, LY0/S;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/booklal/booklal/MainActivity;

    iget-object v2, v2, LY0/S;->d:Lh/i;

    check-cast v2, Lcom/booklal/booklal/Dashboard;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_c
    sget v0, Lcom/booklal/booklal/BookAdditionSuccessful;->o:I

    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/BookAdditionSuccessful;

    const-string v4, "review_pref"

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "book_count"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "review_shown"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    if-ne v7, v3, :cond_b

    goto :goto_8

    :cond_b
    const/4 v3, 0x5

    if-lt v7, v3, :cond_d

    rem-int/2addr v7, v3

    if-nez v7, :cond_d

    :goto_8
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c005c

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v4, 0x7f0900d5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, LY0/k;

    invoke-direct {v7, v0, v3, v6}, LY0/k;-><init>(Lh/i;Landroid/app/Dialog;I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0900d4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, LY0/k;

    invoke-direct {v4, v0, v3, v5}, LY0/k;-><init>(Lh/i;Landroid/app/Dialog;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f0800a5

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_c
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x1030002

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_9

    :cond_d
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    const-string v3, "Ads"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    const-string v3, "InterstitialAds"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/l;

    invoke-direct {v3, v0, v6}, LY0/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, LY0/m;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_e
    :goto_9
    return-void

    :pswitch_d
    iget-object v0, v1, LB/a;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_f

    sget-object v0, LB/j;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_10

    :cond_f
    sget-object v3, LB/j;->a:Ljava/lang/Class;

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_10

    move v4, v5

    goto :goto_a

    :cond_10
    move v4, v6

    :goto_a
    sget-object v7, LB/j;->f:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_11

    if-nez v7, :cond_11

    goto/16 :goto_f

    :cond_11
    sget-object v4, LB/j;->e:Ljava/lang/reflect/Method;

    if-nez v4, :cond_12

    sget-object v4, LB/j;->d:Ljava/lang/reflect/Method;

    if-nez v4, :cond_12

    goto/16 :goto_f

    :cond_12
    :try_start_11
    sget-object v4, LB/j;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_13

    goto/16 :goto_f

    :cond_13
    sget-object v4, LB/j;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14

    goto/16 :goto_f

    :cond_14
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v15

    new-instance v14, LB/i;

    invoke-direct {v14, v2}, LB/i;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v15, v14}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    sget-object v13, LB/j;->g:Landroid/os/Handler;

    :try_start_12
    new-instance v9, LB/h;

    invoke-direct {v9, v6, v14, v8}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    if-ne v0, v3, :cond_15

    move v0, v5

    goto :goto_b

    :cond_15
    move v0, v6

    :goto_b
    if-eqz v0, :cond_16

    :try_start_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object/from16 v12, v16

    move-object/from16 v17, v13

    move-object v13, v0

    move-object/from16 v18, v14

    move-object v14, v3

    move-object v3, v15

    move-object/from16 v15, v16

    :try_start_14
    filled-new-array/range {v8 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :catchall_7
    move-exception v0

    :goto_c
    move-object/from16 v7, v17

    move-object/from16 v4, v18

    goto :goto_e

    :catchall_8
    move-exception v0

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move-object v3, v15

    goto :goto_c

    :cond_16
    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move-object v3, v15

    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :goto_d
    :try_start_15
    new-instance v0, LB/h;

    move-object/from16 v4, v18

    invoke-direct {v0, v5, v3, v4, v6}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    move-object/from16 v7, v17

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    :goto_e
    new-instance v8, LB/h;

    invoke-direct {v8, v5, v3, v4, v6}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :catchall_9
    :goto_f
    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    :cond_17
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
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
