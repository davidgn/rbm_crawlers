.class public final synthetic LY0/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LY0/K;->a:I

    iput-object p1, p0, LY0/K;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 p1, 0x1

    iget-object v0, p0, LY0/K;->b:Ljava/lang/Object;

    iget v1, p0, LY0/K;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    check-cast v0, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/booklal/booklal/MainActivity;->k(Landroid/app/Activity;)V

    iget-boolean v1, v0, Lcom/booklal/booklal/MainActivity;->n:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const p1, 0x1020002

    invoke-virtual {v0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "Accept terms and policy to continue."

    invoke-static {p1, v0, v2}, LA2/q;->f(Landroid/view/View;Ljava/lang/String;I)LA2/q;

    move-result-object p1

    invoke-virtual {p1}, LA2/q;->i()V

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lcom/booklal/booklal/MainActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/MainActivity;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/booklal/booklal/MainActivity;->y:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x927c0

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    const-string v1, "Security verification failed recently. Please re-install the app."

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lcom/booklal/booklal/MainActivity;->w:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/booklal/booklal/MainActivity;->x:J

    sub-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    iget-object p1, v0, Lcom/booklal/booklal/MainActivity;->o:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x65

    invoke-virtual {v0, p1, v1}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/booklal/booklal/MainActivity;->u:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/booklal/booklal/MainActivity;->v:J

    :goto_0
    invoke-static {v0}, Lcom/google/android/play/core/integrity/IntegrityManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/integrity/IntegrityManager;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    sget-object v3, Lcom/booklal/booklal/MainActivity;->A:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->setNonce(Ljava/lang/String;)Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    move-result-object v2

    const-wide v3, 0xa289ccb754L

    invoke-virtual {v2, v3, v4}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->setCloudProjectNumber(J)Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/play/core/integrity/IntegrityManager;->requestIntegrityToken(Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, LY0/l;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LY0/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, LY0/I;

    invoke-direct {v2, v0, p1}, LY0/I;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :goto_1
    return-void

    :pswitch_0
    sget p1, Lcom/booklal/booklal/Dashboard;->G0:I

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
