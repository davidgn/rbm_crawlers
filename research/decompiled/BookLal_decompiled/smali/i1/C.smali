.class public final Li1/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/r;
.implements Li1/E;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 0

    iput p2, p0, Li1/C;->a:I

    iput-object p1, p0, Li1/C;->b:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Li1/w;)Li1/q;
    .locals 0

    iget p1, p0, Li1/C;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Li1/F;

    invoke-direct {p1, p0}, Li1/F;-><init>(Li1/E;)V

    return-object p1

    :pswitch_0
    new-instance p1, Li1/F;

    invoke-direct {p1, p0}, Li1/F;-><init>(Li1/E;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Landroid/net/Uri;)Lc1/e;
    .locals 3

    iget v0, p0, Li1/C;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lc1/n;

    iget-object v1, p0, Li1/C;->b:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p1, v1}, Lc1/b;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lc1/a;

    iget-object v1, p0, Li1/C;->b:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lc1/a;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
