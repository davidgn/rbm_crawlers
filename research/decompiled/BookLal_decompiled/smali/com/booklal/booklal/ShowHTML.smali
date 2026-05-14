.class public Lcom/booklal/booklal/ShowHTML;
.super Lh/i;
.source "SourceFile"


# instance fields
.field public b:Landroidx/appcompat/widget/Toolbar;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/webkit/WebView;

.field public e:Ljava/lang/String;

.field public f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0035

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/ShowHTML;->e:Ljava/lang/String;

    const p1, 0x7f09014e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/booklal/booklal/ShowHTML;->b:Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/ShowHTML;->c:Landroid/widget/TextView;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/ShowHTML;->f:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->b:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->e:Ljava/lang/String;

    const-string v0, "about"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->c:Landroid/widget/TextView;

    const-string v0, "About The App"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "file:///android_asset/aboutapp.html"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->e:Ljava/lang/String;

    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->c:Landroid/widget/TextView;

    const-string v0, "Privacy policy"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "file:///android_asset/policy.html"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->e:Ljava/lang/String;

    const-string v0, "howBookLalWorks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->c:Landroid/widget/TextView;

    const-string v0, "How BookLal Works"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "file:///android_asset/howBookLalWorks.html"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->e:Ljava/lang/String;

    const-string v0, "bug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->c:Landroid/widget/TextView;

    const-string v0, "Report a Bug"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "file:///android_asset/bugreport.html"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->e:Ljava/lang/String;

    const-string v0, "tos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->c:Landroid/widget/TextView;

    const-string v0, "Terms of Use"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "file:///android_asset/tandc.html"

    goto :goto_0

    :cond_4
    const-string p1, ""

    :goto_0
    const v0, 0x7f09040a

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/booklal/booklal/ShowHTML;->d:Landroid/webkit/WebView;

    new-instance v1, LY0/O0;

    invoke-direct {v1, p0}, LY0/O0;-><init>(Lcom/booklal/booklal/ShowHTML;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/booklal/booklal/ShowHTML;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->d:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->d:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->d:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object p1, p0, Lcom/booklal/booklal/ShowHTML;->f:Landroid/widget/ImageView;

    new-instance v0, LB2/e;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
