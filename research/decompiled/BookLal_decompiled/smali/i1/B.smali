.class public final Li1/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/q;


# static fields
.field public static final b:Li1/B;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li1/B;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li1/B;-><init>(I)V

    sput-object v0, Li1/B;->b:Li1/B;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Li1/B;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILb1/h;)Li1/p;
    .locals 1

    iget p2, p0, Li1/B;->a:I

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/io/File;

    new-instance p2, Li1/p;

    new-instance p3, Lx1/b;

    invoke-direct {p3, p1}, Lx1/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Li1/e;

    const/4 v0, 0x0

    invoke-direct {p4, p1, v0}, Li1/e;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3, p4}, Li1/p;-><init>(Lb1/e;Lc1/e;)V

    return-object p2

    :pswitch_1
    new-instance p2, Li1/p;

    new-instance p3, Lx1/b;

    invoke-direct {p3, p1}, Lx1/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Li1/e;

    const/4 v0, 0x1

    invoke-direct {p4, p1, v0}, Li1/e;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3, p4}, Li1/p;-><init>(Lb1/e;Lc1/e;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Li1/B;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    check-cast p1, Ljava/io/File;

    const/4 p1, 0x1

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
