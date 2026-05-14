.class public Lcom/booklal/booklal/MainActivity;
.super Lh/i;
.source "SourceFile"


# static fields
.field public static final A:Ljava/security/SecureRandom;

.field public static z:Landroid/widget/CheckBox;


# instance fields
.field public b:Lcom/hbb20/CountryCodePicker;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/Button;

.field public f:Lcom/google/firebase/auth/FirebaseAuth;

.field public l:Ljava/lang/String;

.field public m:Landroid/widget/TextView;

.field public n:Z

.field public o:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field public p:Lcom/google/android/gms/common/SignInButton;

.field public q:J

.field public final r:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public final s:LC4/C;

.field public t:Ljava/util/List;

.field public u:Landroid/widget/LinearLayout;

.field public v:J

.field public w:Z

.field public x:J

.field public y:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/booklal/booklal/MainActivity;->A:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lh/i;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/booklal/booklal/MainActivity;->q:J

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    iput-object v2, p0, Lcom/booklal/booklal/MainActivity;->r:Lcom/google/firebase/firestore/FirebaseFirestore;

    new-instance v2, LC4/C;

    invoke-direct {v2}, LC4/C;-><init>()V

    iput-object v2, p0, Lcom/booklal/booklal/MainActivity;->s:LC4/C;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/booklal/booklal/MainActivity;->w:Z

    iput-wide v0, p0, Lcom/booklal/booklal/MainActivity;->x:J

    iput-wide v0, p0, Lcom/booklal/booklal/MainActivity;->y:J

    return-void
.end method

.method public static k(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;LY0/k0;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "USER"

    :goto_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    const/16 v2, 0x2710

    const v3, 0x1869f

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@BL"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/booklal/booklal/MainActivity;->r:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1, v7}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LY0/j0;

    const/4 v9, 0x1

    move-object v4, v1

    move-object v5, p0

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, LY0/j0;-><init>(Lcom/booklal/booklal/MainActivity;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lcom/booklal/booklal/MainActivity;->u:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/booklal/booklal/MainActivity;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/booklal/booklal/MainActivity;->u:Landroid/widget/LinearLayout;

    new-instance v3, LB/a;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, LB/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "MainActivityTAG"

    const-string v1, "firebaseAuthWithGoogle:"

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/F;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string p3, "Logging ...\n\nPlease Wait a Moment."

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/google/firebase/auth/GoogleAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    iget-object p3, p0, Lcom/booklal/booklal/MainActivity;->f:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p3, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, LY0/o;

    const/4 v1, 0x1

    invoke-direct {p3, v1, p0, p2}, LY0/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Google sign in failed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onCheckboxClicked(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/booklal/booklal/MainActivity;->n:Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    sget v0, Lh/n;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    sput v1, Lh/n;->b:I

    sget-object v0, Lh/n;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lh/n;->l:Lr/c;

    invoke-virtual {v2}, Lr/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    move-object v3, v2

    check-cast v3, Lr/g;

    invoke-virtual {v3}, Lr/g;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lr/g;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh/n;

    if-eqz v3, :cond_0

    check-cast v3, Lh/z;

    invoke-virtual {v3, v1, v1}, Lh/z;->n(ZZ)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0029

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    const p1, 0x7f090299

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/MainActivity;->c:Landroid/widget/EditText;

    const p1, 0x7f0900f4

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hbb20/CountryCodePicker;

    iput-object p1, p0, Lcom/booklal/booklal/MainActivity;->b:Lcom/hbb20/CountryCodePicker;

    const p1, 0x7f09007c

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/MainActivity;->d:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/booklal/booklal/MainActivity;->b:Lcom/hbb20/CountryCodePicker;

    iget-object v0, p0, Lcom/booklal/booklal/MainActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodePicker;->setEditText_registeredCarrierNumber(Landroid/widget/EditText;)V

    const p1, 0x7f09039f

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/MainActivity;->m:Landroid/widget/TextView;

    const p1, 0x7f0901bd

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/booklal/booklal/MainActivity;->e:Landroid/widget/Button;

    const p1, 0x7f090364

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/SignInButton;

    iput-object p1, p0, Lcom/booklal/booklal/MainActivity;->p:Lcom/google/android/gms/common/SignInButton;

    const p1, 0x7f090105

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    sput-object p1, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    const p1, 0x7f09032e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/booklal/booklal/MainActivity;->u:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/MainActivity;->f:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/GetCurrentLocation;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/booklal/booklal/MainActivity;->r:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "config"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    const-string v0, "default"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/Q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/Q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const v0, 0x7f11004b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/MainActivity;->o:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    iget-object p1, p0, Lcom/booklal/booklal/MainActivity;->p:Lcom/google/android/gms/common/SignInButton;

    new-instance v0, LY0/K;

    invoke-direct {v0, p0, v1}, LY0/K;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/SignInButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/MainActivity;->e:Landroid/widget/Button;

    new-instance v0, LB2/e;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/text/SpannableString;

    const-string v0, "By creating an account you agree to the BookLal App\'s Privacy Policy and Terms and Conditions"

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, LY0/m0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/m0;-><init>(Lcom/booklal/booklal/MainActivity;I)V

    new-instance v1, LY0/m0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LY0/m0;-><init>(Lcom/booklal/booklal/MainActivity;I)V

    const/16 v2, 0x36

    const/16 v3, 0x44

    const/16 v4, 0x21

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/16 v0, 0x49

    const/16 v2, 0x5d

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/booklal/booklal/MainActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/MainActivity;->m:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/booklal/booklal/MainActivity;->m:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method
