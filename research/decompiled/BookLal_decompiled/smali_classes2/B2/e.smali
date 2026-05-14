.class public final LB2/e;
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

    iput p2, p0, LB2/e;->a:I

    iput-object p1, p0, LB2/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const-class v0, Lcom/booklal/booklal/SellingItems;

    const-string v1, ""

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, LB2/e;->b:Ljava/lang/Object;

    iget v7, p0, LB2/e;->a:I

    packed-switch v7, :pswitch_data_0

    check-cast p1, Lu2/c;

    invoke-virtual {p1}, Lu2/c;->getItemData()Lk/o;

    move-result-object p1

    check-cast v6, Lk2/b;

    iget-object v0, v6, Lu2/e;->G:Lk/m;

    iget-object v1, v6, Lu2/e;->F:Lu2/g;

    invoke-virtual {v0, p1, v1, v5}, Lk/m;->q(Landroid/view/MenuItem;Lk/z;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v4}, Lk/o;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    check-cast v6, Ls2/p;

    iget-object v0, v6, Ls2/p;->e:Ls2/h;

    if-eqz v0, :cond_1

    iput-boolean v4, v0, Ls2/h;->f:Z

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Lk/o;

    move-result-object p1

    iget-object v0, v6, Ls2/p;->c:Lk/m;

    invoke-virtual {v0, p1, v6, v5}, Lk/m;->q(Landroid/view/MenuItem;Lk/z;I)Z

    move-result v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lk/o;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, v6, Ls2/p;->e:Ls2/h;

    invoke-virtual {v0, p1}, Ls2/h;->i(Lk/o;)V

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    iget-object p1, v6, Ls2/p;->e:Ls2/h;

    if-eqz p1, :cond_3

    iput-boolean v5, p1, Ls2/h;->f:Z

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v6, v5}, Ls2/p;->g(Z)V

    :cond_4
    return-void

    :pswitch_1
    check-cast v6, Ll2/g;

    iget-boolean p1, v6, Ll2/g;->o:Z

    if-eqz p1, :cond_6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, v6, Ll2/g;->q:Z

    if-nez p1, :cond_5

    invoke-virtual {v6}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x101035b

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Ll2/g;->p:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v4, v6, Ll2/g;->q:Z

    :cond_5
    iget-boolean p1, v6, Ll2/g;->p:Z

    if-eqz p1, :cond_6

    invoke-virtual {v6}, Ll2/g;->cancel()V

    :cond_6
    return-void

    :pswitch_2
    check-cast v6, Landroidx/appcompat/widget/Toolbar;

    iget-object p1, v6, Landroidx/appcompat/widget/Toolbar;->R:Ll/a1;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v3, p1, Ll/a1;->b:Lk/o;

    :goto_1
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lk/o;->collapseActionView()Z

    :cond_8
    return-void

    :pswitch_3
    check-cast v6, Lj/a;

    invoke-virtual {v6}, Lj/a;->a()V

    return-void

    :pswitch_4
    check-cast v6, Lh/e;

    iget-object v0, v6, Lh/e;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    iget-object v0, v6, Lh/e;->i:Landroid/os/Message;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    goto :goto_2

    :cond_9
    iget-object v0, v6, Lh/e;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    iget-object v0, v6, Lh/e;->l:Landroid/os/Message;

    if-eqz v0, :cond_a

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    goto :goto_2

    :cond_a
    iget-object v0, v6, Lh/e;->m:Landroid/widget/Button;

    if-ne p1, v0, :cond_b

    iget-object p1, v6, Lh/e;->o:Landroid/os/Message;

    if-eqz p1, :cond_b

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    :cond_b
    :goto_2
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_c
    iget-object p1, v6, Lh/e;->D:Lh/c;

    iget-object v0, v6, Lh/e;->b:Lh/f;

    invoke-virtual {p1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_5
    check-cast v6, Lcom/google/android/material/datepicker/k;

    iget-object p1, v6, Lcom/google/android/material/datepicker/k;->r:Landroid/widget/Button;

    invoke-virtual {v6}, Lcom/google/android/material/datepicker/k;->g()V

    throw v3

    :pswitch_6
    check-cast v6, Lcom/google/android/material/datepicker/j;

    iget p1, v6, Lcom/google/android/material/datepicker/j;->e:I

    if-ne p1, v2, :cond_d

    invoke-virtual {v6, v4}, Lcom/google/android/material/datepicker/j;->g(I)V

    goto :goto_3

    :cond_d
    if-ne p1, v4, :cond_e

    invoke-virtual {v6, v2}, Lcom/google/android/material/datepicker/j;->g(I)V

    :cond_e
    :goto_3
    return-void

    :pswitch_7
    sget p1, Lcom/hbb20/CountryCodePicker;->J0:I

    check-cast v6, Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, v6, Lcom/hbb20/CountryCodePicker;->n0:Z

    if-eqz p1, :cond_10

    iget-boolean p1, v6, Lcom/hbb20/CountryCodePicker;->Q:Z

    if-eqz p1, :cond_f

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/hbb20/CountryCodePicker;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v6, v3}, Lcom/hbb20/CountryCodePicker;->e(Ljava/lang/String;)V

    :cond_10
    :goto_4
    return-void

    :pswitch_8
    check-cast v6, Lc3/f;

    iget-object p1, v6, Lc3/f;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_9
    check-cast v6, Lcom/booklal/booklal/StatsActivity;

    invoke-virtual {v6}, Lcom/booklal/booklal/StatsActivity;->onBackPressed()V

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_a
    check-cast v6, Lcom/booklal/booklal/ShowHTML;

    invoke-virtual {v6}, Landroidx/activity/p;->onBackPressed()V

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_b
    check-cast v6, Lcom/booklal/booklal/ShowFullBookImage;

    invoke-virtual {v6}, Landroidx/activity/p;->onBackPressed()V

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_c
    check-cast v6, Lcom/booklal/booklal/SearchPage;

    invoke-virtual {v6}, Landroidx/activity/p;->onBackPressed()V

    return-void

    :pswitch_d
    check-cast v6, Lcom/booklal/booklal/RewardAdActivity;

    invoke-virtual {v6}, Landroidx/activity/p;->onBackPressed()V

    return-void

    :pswitch_e
    check-cast v6, LY0/Q;

    iget-object p1, v6, LY0/Q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object p1, p1, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, v6, LY0/Q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/RewardAdActivity;

    iget-wide v6, p1, Lcom/booklal/booklal/RewardAdActivity;->t:J

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x9c40

    cmp-long v8, v0, v6

    if-gez v8, :cond_11

    sub-long/2addr v6, v0

    iget-object v0, p1, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, LY0/G0;

    invoke-direct {v0, p1, v6, v7, v5}, LY0/G0;-><init>(Ljava/lang/Object;JI)V

    iget-object p1, p1, Lcom/booklal/booklal/RewardAdActivity;->u:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_11
    iget-object v0, p1, Lcom/booklal/booklal/RewardAdActivity;->e:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_12

    new-instance v1, LY0/r;

    invoke-direct {v1, p0, v4}, LY0/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    iget-object v0, p1, Lcom/booklal/booklal/RewardAdActivity;->e:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v1, LD2/e;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0, p1, v5}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    goto :goto_5

    :cond_12
    iget-object v0, p1, Lcom/booklal/booklal/RewardAdActivity;->o:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    new-instance v1, LY0/r;

    invoke-direct {v1, p1, v2}, LY0/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    iget-object v0, p1, Lcom/booklal/booklal/RewardAdActivity;->o:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    :cond_13
    const-string p1, "RewardedAdActivity"

    const-string v0, "The rewarded ad wasn\'t ready yet."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :pswitch_f
    check-cast v6, Lcom/booklal/booklal/ProfilePhotoViewActivity;

    invoke-virtual {v6}, Landroidx/activity/p;->onBackPressed()V

    return-void

    :pswitch_10
    check-cast v6, Lcom/booklal/booklal/NewBookActivity;

    invoke-virtual {v6}, Landroidx/activity/p;->onBackPressed()V

    return-void

    :pswitch_11
    check-cast v6, Lcom/booklal/booklal/ManageOTP;

    iget-object p1, v6, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, v6, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    const-string v0, "#C8E6C9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, v6, Lcom/booklal/booklal/ManageOTP;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v0, "#00C853"

    if-eqz p1, :cond_14

    iget-object p1, v6, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p1, "Blank Field can\'t be processed"

    invoke-static {v6, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, v6, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_6

    :cond_14
    iget-object p1, v6, Lcom/booklal/booklal/ManageOTP;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_15

    iget-object p1, v6, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p1, "Invalid OTP"

    invoke-static {v6, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, v6, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_6

    :cond_15
    iget-object p1, v6, Lcom/booklal/booklal/ManageOTP;->f:Ljava/lang/String;

    iget-object v0, v6, Lcom/booklal/booklal/ManageOTP;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    iget-object v0, v6, Lcom/booklal/booklal/ManageOTP;->m:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LE2/h;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v6, p1}, LE2/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_6
    return-void

    :pswitch_12
    check-cast v6, Lcom/booklal/booklal/MainActivity;

    iget-object p1, v6, Lcom/booklal/booklal/MainActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, v6, Lcom/booklal/booklal/MainActivity;->t:Ljava/util/List;

    if-eqz v2, :cond_19

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/booklal/booklal/ManageOTP;

    invoke-direct {v2, v6, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x8

    if-ge p1, v3, :cond_16

    iget-object p1, v6, Lcom/booklal/booklal/MainActivity;->c:Landroid/widget/EditText;

    const-string v0, "Invalid Phone Number"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_16
    iget-object p1, v6, Lcom/booklal/booklal/MainActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v4, :cond_17

    iget-object p1, v6, Lcom/booklal/booklal/MainActivity;->d:Landroid/widget/EditText;

    const-string v0, "Name can\'t be empty."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_17
    iget-boolean p1, v6, Lcom/booklal/booklal/MainActivity;->n:Z

    if-eqz p1, :cond_18

    iget-object p1, v6, Lcom/booklal/booklal/MainActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/booklal/booklal/MainActivity;->l:Ljava/lang/String;

    iget-object p1, v6, Lcom/booklal/booklal/MainActivity;->b:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getFullNumberWithPlus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mobile"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "account_name"

    iget-object v0, v6, Lcom/booklal/booklal/MainActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    :cond_18
    invoke-static {v6}, Lcom/booklal/booklal/MainActivity;->k(Landroid/app/Activity;)V

    const p1, 0x1020002

    invoke-virtual {v6, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "Accept terms and policy to continue."

    invoke-static {p1, v0, v5}, LA2/q;->f(Landroid/view/View;Ljava/lang/String;I)LA2/q;

    move-result-object p1

    new-instance v0, LY0/l0;

    invoke-direct {v0, v5}, LY0/l0;-><init>(I)V

    const-string v1, "CLOSE"

    invoke-virtual {p1, v1, v0}, LA2/q;->g(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6}, Lh/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, LA2/q;->h(I)V

    invoke-virtual {p1}, LA2/q;->i()V

    goto :goto_7

    :cond_19
    invoke-static {v6}, Lcom/booklal/booklal/MainActivity;->k(Landroid/app/Activity;)V

    const-string p1, "Please use Sign in with Google"

    invoke-static {v6, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_7
    return-void

    :pswitch_13
    check-cast v6, LY0/h0;

    iget-object p1, v6, LY0/h0;->a:Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v6, LY0/h0;->a:Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_14
    check-cast v6, LY0/U;

    iget-object p1, v6, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v6, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, v6, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_15
    check-cast v6, Lcom/booklal/booklal/DeleteAccountRequest;

    invoke-virtual {v6}, Landroidx/activity/p;->onBackPressed()V

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_16
    check-cast v6, Lcom/booklal/booklal/ChatActivity;

    iget-object p1, v6, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    if-eqz p1, :cond_1a

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/PublicProfileActivity;

    invoke-direct {p1, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "uid"

    iget-object v1, v6, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_1a
    const-string p1, "User does\'t exists."

    invoke-static {v6, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_8
    return-void

    :pswitch_17
    check-cast v6, Lcom/booklal/booklal/CategoryBookListingActivity;

    invoke-virtual {v6}, Landroidx/activity/p;->onBackPressed()V

    return-void

    :pswitch_18
    check-cast v6, Lcom/booklal/booklal/BookAdditionSuccessful;

    invoke-virtual {v6}, Lcom/booklal/booklal/BookAdditionSuccessful;->onBackPressed()V

    return-void

    :pswitch_19
    check-cast v6, LB2/w;

    iget-object p1, v6, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_a

    :cond_1b
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-static {v6}, LB2/w;->d(LB2/w;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_9

    :cond_1c
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_9
    if-ltz v0, :cond_1d

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1d
    iget-object p1, v6, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p1, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :goto_a
    return-void

    :pswitch_1a
    check-cast v6, LB2/q;

    iget-object p1, v6, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    invoke-static {v6, p1}, LB2/q;->d(LB2/q;Landroid/widget/AutoCompleteTextView;)V

    return-void

    :pswitch_1b
    check-cast v6, LB2/h;

    iget-object p1, v6, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_1e
    iget-object p1, v6, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p1, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
