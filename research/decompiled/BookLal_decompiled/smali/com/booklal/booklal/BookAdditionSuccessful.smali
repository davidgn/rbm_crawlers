.class public Lcom/booklal/booklal/BookAdditionSuccessful;
.super Lh/i;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/google/android/gms/ads/AdView;

.field public l:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public m:Ljava/lang/String;

.field public n:Lcom/google/android/gms/ads/interstitial/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroidx/activity/p;->onBackPressed()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/Dashboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "g1"

    iget-object v2, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "g2"

    iget-object v2, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c001e

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "g1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->d:Ljava/lang/String;

    const-string v0, "g2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "BOOK_ADDED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const v0, 0x7f0903c6

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->b:Landroid/widget/ImageView;

    const v0, 0x7f0903cc

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->c:Landroid/widget/TextView;

    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v0, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->c:Landroid/widget/TextView;

    const-string v2, "BookLal"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object v0

    invoke-virtual {v0}, LZ2/l;->S()V

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->l:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->m:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "review_pref"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "book_count"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, LB/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LB/a;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance p1, LY0/p;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LY0/p;-><init>(I)V

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->f:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    iget-object p1, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->f:Lcom/google/android/gms/ads/AdView;

    new-instance v0, LY0/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/q;-><init>(Lh/i;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/BookAdditionSuccessful;->b:Landroid/widget/ImageView;

    new-instance v0, LB2/e;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
