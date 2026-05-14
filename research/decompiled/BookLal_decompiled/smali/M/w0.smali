.class public final LM/w0;
.super LM/u0;
.source "SourceFile"


# static fields
.field public static final q:LM/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, LM/v0;->g()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LM/z0;->h(Landroid/view/WindowInsets;Landroid/view/View;)LM/z0;

    move-result-object v0

    sput-object v0, LM/w0;->q:LM/z0;

    return-void
.end method

.method public constructor <init>(LM/z0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LM/u0;-><init>(LM/z0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(I)LE/c;
    .locals 1

    iget-object v0, p0, LM/r0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, LM/y0;->a(I)I

    move-result p1

    invoke-static {v0, p1}, LM/v0;->e(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, LE/c;->b(Landroid/graphics/Insets;)LE/c;

    move-result-object p1

    return-object p1
.end method
