.class public final Lh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ContextThemeWrapper;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/view/View;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Ljava/lang/String;

.field public k:Landroid/content/DialogInterface$OnClickListener;

.field public l:Lk/n;

.field public m:Ljava/lang/Object;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Z

.field public p:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh/b;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lh/b;->p:I

    iput-object p1, p0, Lh/b;->a:Landroid/view/ContextThemeWrapper;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lh/b;->b:Landroid/view/LayoutInflater;

    return-void
.end method
