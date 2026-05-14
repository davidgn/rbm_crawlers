.class public final Lw2/c;
.super LL4/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:LL4/d;

.field public final synthetic d:Lw2/d;


# direct methods
.method public constructor <init>(Lw2/d;Landroid/text/TextPaint;LL4/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/c;->d:Lw2/d;

    iput-object p2, p0, Lw2/c;->b:Landroid/text/TextPaint;

    iput-object p3, p0, Lw2/c;->c:LL4/d;

    return-void
.end method


# virtual methods
.method public final D(I)V
    .locals 1

    iget-object v0, p0, Lw2/c;->c:LL4/d;

    invoke-virtual {v0, p1}, LL4/d;->D(I)V

    return-void
.end method

.method public final E(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Lw2/c;->d:Lw2/d;

    iget-object v1, p0, Lw2/c;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lw2/d;->g(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lw2/c;->c:LL4/d;

    invoke-virtual {v0, p1, p2}, LL4/d;->E(Landroid/graphics/Typeface;Z)V

    return-void
.end method
