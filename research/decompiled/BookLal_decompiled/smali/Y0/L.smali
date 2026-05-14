.class public final LY0/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/P0;
.implements LD0/j;


# instance fields
.field public final synthetic a:Lcom/booklal/booklal/Dashboard;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/Dashboard;)V
    .locals 0

    iput-object p1, p0, LY0/L;->a:Lcom/booklal/booklal/Dashboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 4

    iget-object v0, p0, LY0/L;->a:Lcom/booklal/booklal/Dashboard;

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->F0:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    sput v1, Lcom/booklal/booklal/Dashboard;->H0:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/booklal/booklal/Dashboard;->B0:Lcom/google/firebase/firestore/DocumentSnapshot;

    iput-boolean v1, v0, Lcom/booklal/booklal/Dashboard;->c0:Z

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/booklal/booklal/Dashboard;->l(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/booklal/booklal/Dashboard;->l(Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    iget-boolean v2, v2, Landroidx/appcompat/widget/SearchView;->T:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->j0:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->h0:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcom/booklal/booklal/Dashboard;->m(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method
