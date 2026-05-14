.class public LJ2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/b;
.implements LW0/a;
.implements Ll3/u;
.implements Lq1/a;


# static fields
.field public static e:LJ2/e;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, LJ2/e;->a:I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LJ2/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v0, 0xa

    iput v0, p0, LJ2/e;->a:I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-class v0, Lcom/google/android/material/datepicker/j;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0402e6

    .line 66
    invoke-static {p1, v1, v0}, La/a;->v(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 67
    sget-object v1, Le2/a;->q:[I

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 70
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/c;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 72
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/c;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    move-result-object v1

    iput-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 74
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/c;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x4

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 76
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/c;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x6

    .line 77
    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/a;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v3, 0x8

    .line 78
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 79
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/c;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    move-result-object v3

    iput-object v3, p0, LJ2/e;->b:Ljava/lang/Object;

    const/4 v3, 0x7

    .line 80
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 81
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/c;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    const/16 v3, 0x9

    .line 82
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 83
    invoke-static {p1, v2}, Lcom/google/android/material/datepicker/c;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    move-result-object p1

    iput-object p1, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 84
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 85
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, LJ2/e;->a:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, LJ2/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 2

    const/16 v0, 0xe

    iput v0, p0, LJ2/e;->a:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, LJ2/j;

    const/4 v1, 0x1

    .line 53
    invoke-direct {v0, v1}, LJ2/j;-><init>(I)V

    .line 54
    iput-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 56
    iput-object p2, p0, LJ2/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lf1/f;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, LJ2/e;->a:I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p3, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 90
    invoke-static {p2, v0}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p2, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 92
    new-instance p2, Lc1/i;

    invoke-direct {p2, p1}, Lc1/i;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, LJ2/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, LJ2/e;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020003

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    const/16 v1, 0x3e8

    int-to-long v1, v1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 19
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020004

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    iput-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 22
    new-instance v1, LF0/i;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, LF0/i;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    invoke-virtual {p0}, LJ2/e;->V()V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/X;Landroidx/lifecycle/V;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, LJ2/e;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Li0/a;->b:Li0/a;

    .line 47
    invoke-direct {p0, p1, p2, v0}, LJ2/e;-><init>(Landroidx/lifecycle/X;Landroidx/lifecycle/V;Li0/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/X;Landroidx/lifecycle/V;Li0/b;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, LJ2/e;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 37
    iput-object p3, p0, LJ2/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/w;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LJ2/e;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p1}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LJ2/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, LJ2/e;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 6
    new-instance v0, LT0/b;

    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p1, v1}, LT0/b;-><init>(Lv0/h;I)V

    .line 8
    iput-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 9
    new-instance v0, LT0/e;

    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p1, v1}, LT0/e;-><init>(Lv0/h;I)V

    .line 11
    iput-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le1/n;Lu1/e;Le1/r;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, LJ2/e;->a:I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/e;->d:Ljava/lang/Object;

    .line 108
    iput-object p2, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 109
    iput-object p3, p0, LJ2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf1/f;Ljava/io/InputStream;Ljava/util/ArrayList;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, LJ2/e;->a:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 31
    invoke-static {p3, v0}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p3, p0, LJ2/e;->d:Ljava/lang/Object;

    .line 33
    new-instance p3, Lc1/i;

    invoke-direct {p3, p2, p1}, Lc1/i;-><init>(Ljava/io/InputStream;Lf1/f;)V

    iput-object p3, p0, LJ2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    const/16 v0, 0x8

    iput v0, p0, LJ2/e;->a:I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    .line 95
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 96
    new-instance v0, LT0/i;

    iget-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LT0/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 98
    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast p1, LT0/i;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, LT0/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, LJ2/e;->a:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 45
    iput-object p3, p0, LJ2/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LJ2/e;->a:I

    iput-object p1, p0, LJ2/e;->d:Ljava/lang/Object;

    iput-object p2, p0, LJ2/e;->b:Ljava/lang/Object;

    iput-object p3, p0, LJ2/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 3
    iput p4, p0, LJ2/e;->a:I

    iput-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    iput-object p2, p0, LJ2/e;->c:Ljava/lang/Object;

    iput-object p3, p0, LJ2/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lj3/b;[[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, LJ2/e;->a:I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "addresses are not set"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 114
    const-string p1, "attrs"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 115
    const-string p1, "customOptions"

    invoke-static {p3, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, LJ2/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, LJ2/e;->a:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 26
    new-instance v0, LS1/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LS1/q;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    .line 27
    new-instance v0, LU0/i;

    invoke-direct {v0, p1}, LU0/i;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll3/L0;Ll3/E0;Lj3/B;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, LJ2/e;->a:I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, LJ2/e;->d:Ljava/lang/Object;

    .line 102
    iput-object p2, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 103
    const-string p1, "resolver"

    invoke-static {p3, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, LJ2/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll3/r;Lj3/j;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, LJ2/e;->a:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/e;->d:Ljava/lang/Object;

    .line 111
    const-string p1, "observer"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LJ2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu/e;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, LJ2/e;->a:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 59
    new-instance v0, Lv/b;

    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, LJ2/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu0/x;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, LJ2/e;->a:I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    .line 40
    new-instance p1, LI4/a;

    invoke-direct {p1}, LI4/a;-><init>()V

    iput-object p1, p0, LJ2/e;->c:Ljava/lang/Object;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LJ2/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public static J(Landroid/content/Context;Landroid/util/AttributeSet;[II)LJ2/e;
    .locals 2

    new-instance v0, LJ2/e;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LJ2/e;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method private final S()V
    .locals 0

    return-void
.end method

.method public static z(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, LJ2/e;->z(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, p0

    :catch_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)LT0/d;
    .locals 4

    const-string v0, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lv0/i;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lv0/i;->m(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p1}, Lv0/h;->b()V

    invoke-virtual {p1, v0}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    invoke-static {v1, p1}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    const-string v2, "system_id"

    invoke-static {v2, p1}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, LT0/d;

    invoke-direct {v3, v1, v2}, LT0/d;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    return-object v3

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    throw v1
.end method

.method public B(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lu0/x;

    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public C()I
    .locals 1

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lu0/x;

    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public D(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lu0/x;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v1, p1, Lu0/W;->v:I

    const/4 v2, -0x1

    iget-object v3, p1, Lu0/W;->a:Landroid/view/View;

    if-eq v1, v2, :cond_0

    iput v1, p1, Lu0/W;->u:I

    goto :goto_0

    :cond_0
    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    iput v1, p1, Lu0/W;->u:I

    :goto_0
    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->M()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    iput v2, p1, Lu0/W;->v:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object p1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public E(LT0/d;)V
    .locals 2

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    iget-object v1, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, LT0/b;

    invoke-virtual {v1, p1}, LT0/b;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lv0/h;->f()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lv0/h;->f()V

    throw p1
.end method

.method public varargs F(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LJ2/e;->x(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpectedly could not call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported for object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public varargs G(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LJ2/e;->x(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :goto_0
    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public varargs H(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, LJ2/e;->F(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public I(ILu/d;Lx/e;)Z
    .locals 6

    iget-object v0, p2, Lu/d;->o0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v3, Lv/b;

    iput v2, v3, Lv/b;->a:I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v3, Lv/b;->b:I

    invoke-virtual {p2}, Lu/d;->o()I

    move-result v0

    iput v0, v3, Lv/b;->c:I

    invoke-virtual {p2}, Lu/d;->i()I

    move-result v0

    iput v0, v3, Lv/b;->d:I

    iput-boolean v1, v3, Lv/b;->i:Z

    iput p1, v3, Lv/b;->j:I

    iget p1, v3, Lv/b;->a:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget v4, v3, Lv/b;->b:I

    if-ne v4, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget p1, p2, Lu/d;->V:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz v0, :cond_3

    iget v0, p2, Lu/d;->V:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iget-object v4, p2, Lu/d;->t:[I

    const/4 v5, 0x4

    if-eqz p1, :cond_4

    aget p1, v4, v1

    if-ne p1, v5, :cond_4

    iput v2, v3, Lv/b;->a:I

    :cond_4
    if-eqz v0, :cond_5

    aget p1, v4, v2

    if-ne p1, v5, :cond_5

    iput v2, v3, Lv/b;->b:I

    :cond_5
    invoke-virtual {p3, p2, v3}, Lx/e;->b(Lu/d;Lv/b;)V

    iget p1, v3, Lv/b;->e:I

    invoke-virtual {p2, p1}, Lu/d;->K(I)V

    iget p1, v3, Lv/b;->f:I

    invoke-virtual {p2, p1}, Lu/d;->H(I)V

    iget-boolean p1, v3, Lv/b;->h:Z

    iput-boolean p1, p2, Lu/d;->E:Z

    iget p1, v3, Lv/b;->g:I

    iput p1, p2, Lu/d;->Z:I

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    iput-boolean v2, p2, Lu/d;->E:Z

    iput v1, v3, Lv/b;->j:I

    iget-boolean p1, v3, Lv/b;->i:Z

    return p1
.end method

.method public K(Lj3/r0;)V
    .locals 3

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, LZ2/l;->f(ZLjava/lang/String;)V

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v0, v0, Ll3/L0;->m:Lj3/w0;

    new-instance v1, Ll3/B;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public L(Landroidx/lifecycle/m;)V
    .locals 2

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->run()V

    :cond_0
    new-instance v0, Landroidx/fragment/app/i;

    iget-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/v;

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/i;-><init>(Landroidx/lifecycle/v;Landroidx/lifecycle/m;)V

    iput-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    iget-object p1, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public M()V
    .locals 1

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public N(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lz1/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lz1/e;

    invoke-interface {v0}, Lz1/e;->d()Lz1/h;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lz1/h;->a:Z

    :cond_0
    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Lz1/f;

    invoke-interface {v0, p1}, Lz1/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, LL/d;

    invoke-virtual {v0, p1}, LL/d;->c(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public O(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    iget-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, LT0/e;

    invoke-virtual {v1}, Lv0/k;->a()LA0/f;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v2, v3}, LA0/b;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, p1}, LA0/b;->g(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    invoke-virtual {v2}, LA0/f;->t()V

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lv0/h;->f()V

    invoke-virtual {v1, v2}, Lv0/k;->c(LA0/f;)V

    throw p1
.end method

.method public P()V
    .locals 8

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v1, v0, Ll3/L0;->Y:Lj3/G;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lj3/G;->b:Ljava/lang/Object;

    check-cast v1, Lj3/v0;

    iget-boolean v2, v1, Lj3/v0;->c:Z

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lj3/v0;->b:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Ll3/L0;->Z:Ll3/T;

    if-nez v1, :cond_1

    iget-object v1, v0, Ll3/L0;->s:Ll3/P1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll3/P1;->h()Ll3/T;

    move-result-object v1

    iput-object v1, v0, Ll3/L0;->Z:Ll3/T;

    :cond_1
    iget-object v1, v0, Ll3/L0;->Z:Ll3/T;

    invoke-virtual {v1}, Ll3/T;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Scheduling DNS resolution backoff for {0} ns"

    iget-object v3, v0, Ll3/L0;->N:Ll3/l;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v2, v1}, Ll3/l;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ll3/y0;

    const/4 v1, 0x5

    invoke-direct {v3, v0, v1}, Ll3/y0;-><init>(Ll3/L0;I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, v0, Ll3/L0;->f:Ll3/k;

    iget-object v1, v1, Ll3/k;->a:Lm3/f;

    iget-object v7, v1, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual/range {v2 .. v7}, Lj3/w0;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lj3/G;

    move-result-object v1

    iput-object v1, v0, Ll3/L0;->Y:Lj3/G;

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null backendName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R(Lu/e;III)V
    .locals 3

    iget v0, p1, Lu/d;->a0:I

    iget v1, p1, Lu/d;->b0:I

    const/4 v2, 0x0

    iput v2, p1, Lu/d;->a0:I

    iput v2, p1, Lu/d;->b0:I

    invoke-virtual {p1, p3}, Lu/d;->K(I)V

    invoke-virtual {p1, p4}, Lu/d;->H(I)V

    if-gez v0, :cond_0

    iput v2, p1, Lu/d;->a0:I

    goto :goto_0

    :cond_0
    iput v0, p1, Lu/d;->a0:I

    :goto_0
    if-gez v1, :cond_1

    iput v2, p1, Lu/d;->b0:I

    goto :goto_1

    :cond_1
    iput v1, p1, Lu/d;->b0:I

    :goto_1
    iget-object p1, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast p1, Lu/e;

    iput p2, p1, Lu/e;->s0:I

    invoke-virtual {p1}, Lu/e;->Q()V

    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lu0/x;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v1, p1, Lu0/W;->u:I

    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->M()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p1, Lu0/W;->v:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, LM/a0;->a:Ljava/util/WeakHashMap;

    iget-object v0, p1, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p1, Lu0/W;->u:I

    :cond_1
    return-void
.end method

.method public U(Lu/e;)V
    .locals 9

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p1, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    iget-object v5, p1, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu/d;

    iget-object v6, v5, Lu/d;->o0:[I

    aget v7, v6, v2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    aget v4, v6, v4

    if-ne v4, v8, :cond_1

    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lu/e;->r0:Lv/e;

    iput-boolean v4, p1, Lv/e;->a:Z

    return-void
.end method

.method public V()V
    .locals 3

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public a(LB3/b;)V
    .locals 1

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, LB3/c;

    invoke-virtual {v0, p1}, LB3/c;->e(LB3/b;)V

    return-void
.end method

.method public b(Lj3/f0;)V
    .locals 2

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/r;

    iget-object v1, v0, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->b()V

    invoke-static {}, Ly3/b;->a()V

    :try_start_0
    iget-object v0, v0, Ll3/r;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ll3/o;

    invoke-direct {v1, p0, p1}, Ll3/o;-><init>(LJ2/e;Lj3/f0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Ly3/b;->d()V

    throw p1
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/r;

    iget-object v1, v0, Ll3/r;->a:Lj3/h0;

    iget-object v1, v1, Lj3/h0;->a:Lj3/g0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lj3/g0;->a:Lj3/g0;

    if-eq v1, v2, :cond_1

    sget-object v2, Lj3/g0;->b:Lj3/g0;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ly3/b;->b()V

    invoke-static {}, Ly3/b;->a()V

    :try_start_0
    iget-object v0, v0, Ll3/r;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ll3/q;

    invoke-direct {v1, p0}, Ll3/q;-><init>(LJ2/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Ly3/b;->d()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lj1/a;)V
    .locals 2

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/r;

    iget-object v1, v0, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->b()V

    invoke-static {}, Ly3/b;->a()V

    :try_start_0
    iget-object v0, v0, Ll3/r;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ll3/o;

    invoke-direct {v1, p0, p1}, Ll3/o;-><init>(LJ2/e;Lj1/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Ly3/b;->d()V

    throw p1
.end method

.method public e(Le1/A;Lb1/h;)Le1/A;
    .locals 2

    invoke-interface {p1}, Le1/A;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lf1/a;

    invoke-static {p1, v0}, Ll1/c;->d(Landroid/graphics/Bitmap;Lf1/a;)Ll1/c;

    move-result-object p1

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, LG4/n;

    invoke-virtual {v0, p1, p2}, LG4/n;->e(Le1/A;Lb1/h;)Le1/A;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, v0, Lp1/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Lq1/c;

    invoke-virtual {v0, p1, p2}, Lq1/c;->e(Le1/A;Lb1/h;)Le1/A;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lj3/r0;Ll3/t;Lj3/f0;)V
    .locals 0

    iget-object p2, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast p2, Ll3/r;

    iget-object p2, p2, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->b()V

    :try_start_0
    invoke-virtual {p0, p1, p3}, LJ2/e;->l(Lj3/r0;Lj3/f0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Ly3/b;->d()V

    throw p1
.end method

.method public g()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, LL/d;

    invoke-virtual {v0}, LL/d;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz1/d;

    invoke-interface {v0}, Lz1/d;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FactoryPools"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created new "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v1, v0, Lz1/e;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lz1/e;

    invoke-interface {v1}, Lz1/e;->d()Lz1/h;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lz1/h;->a:Z

    :cond_1
    return-object v0
.end method

.method public h(Landroid/view/View;ZI)V
    .locals 2

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lu0/x;

    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p3, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, LJ2/e;->y(I)I

    move-result p3

    :goto_0
    iget-object v1, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, LI4/a;

    invoke-virtual {v1, p3, p2}, LI4/a;->e(IZ)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, LJ2/e;->D(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    return-void
.end method

.method public i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lu0/x;

    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, LJ2/e;->y(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, LI4/a;

    invoke-virtual {v1, p2, p4}, LI4/a;->e(IZ)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, LJ2/e;->D(Landroid/view/View;)V

    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lu0/W;->k()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p4}, Lu0/W;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget v1, p4, Lu0/W;->o:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p4, Lu0/W;->o:I

    :cond_4
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public j()LS1/j;
    .locals 4

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " backendName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, LP1/c;

    if-nez v1, :cond_1

    const-string v1, " priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, LS1/j;

    iget-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v3, LP1/c;

    invoke-direct {v0, v1, v2, v3}, LS1/j;-><init>(Ljava/lang/String;[BLP1/c;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public k()Landroidx/work/o;
    .locals 8

    new-instance v0, Landroidx/work/o;

    iget-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    iget-object v2, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, LT0/i;

    iget-object v3, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/work/o;->a:Ljava/util/UUID;

    iput-object v2, v0, Landroidx/work/o;->b:LT0/i;

    iput-object v3, v0, Landroidx/work/o;->c:Ljava/util/HashSet;

    iget-object v1, v2, LT0/i;->j:Landroidx/work/c;

    iget-object v2, v1, Landroidx/work/c;->h:Landroidx/work/e;

    iget-object v2, v2, Landroidx/work/e;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Landroidx/work/c;->d:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Landroidx/work/c;->b:Z

    if-nez v2, :cond_2

    iget-boolean v1, v1, Landroidx/work/c;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    iget-object v2, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, LT0/i;

    iget-boolean v2, v2, LT0/i;->q:Z

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    new-instance v1, LT0/i;

    iget-object v2, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, LT0/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v3, v1, LT0/i;->b:I

    sget-object v4, Landroidx/work/g;->c:Landroidx/work/g;

    iput-object v4, v1, LT0/i;->e:Landroidx/work/g;

    iput-object v4, v1, LT0/i;->f:Landroidx/work/g;

    sget-object v4, Landroidx/work/c;->i:Landroidx/work/c;

    iput-object v4, v1, LT0/i;->j:Landroidx/work/c;

    iput v3, v1, LT0/i;->l:I

    const-wide/16 v4, 0x7530

    iput-wide v4, v1, LT0/i;->m:J

    const-wide/16 v4, -0x1

    iput-wide v4, v1, LT0/i;->p:J

    iput v3, v1, LT0/i;->r:I

    iget-object v6, v2, LT0/i;->a:Ljava/lang/String;

    iput-object v6, v1, LT0/i;->a:Ljava/lang/String;

    iget-object v6, v2, LT0/i;->c:Ljava/lang/String;

    iput-object v6, v1, LT0/i;->c:Ljava/lang/String;

    iget v6, v2, LT0/i;->b:I

    iput v6, v1, LT0/i;->b:I

    iget-object v6, v2, LT0/i;->d:Ljava/lang/String;

    iput-object v6, v1, LT0/i;->d:Ljava/lang/String;

    new-instance v6, Landroidx/work/g;

    iget-object v7, v2, LT0/i;->e:Landroidx/work/g;

    invoke-direct {v6, v7}, Landroidx/work/g;-><init>(Landroidx/work/g;)V

    iput-object v6, v1, LT0/i;->e:Landroidx/work/g;

    new-instance v6, Landroidx/work/g;

    iget-object v7, v2, LT0/i;->f:Landroidx/work/g;

    invoke-direct {v6, v7}, Landroidx/work/g;-><init>(Landroidx/work/g;)V

    iput-object v6, v1, LT0/i;->f:Landroidx/work/g;

    iget-wide v6, v2, LT0/i;->g:J

    iput-wide v6, v1, LT0/i;->g:J

    iget-wide v6, v2, LT0/i;->h:J

    iput-wide v6, v1, LT0/i;->h:J

    iget-wide v6, v2, LT0/i;->i:J

    iput-wide v6, v1, LT0/i;->i:J

    new-instance v6, Landroidx/work/c;

    iget-object v7, v2, LT0/i;->j:Landroidx/work/c;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v3, v6, Landroidx/work/c;->a:I

    iput-wide v4, v6, Landroidx/work/c;->f:J

    iput-wide v4, v6, Landroidx/work/c;->g:J

    new-instance v3, Landroidx/work/e;

    invoke-direct {v3}, Landroidx/work/e;-><init>()V

    iput-object v3, v6, Landroidx/work/c;->h:Landroidx/work/e;

    iget-boolean v3, v7, Landroidx/work/c;->b:Z

    iput-boolean v3, v6, Landroidx/work/c;->b:Z

    iget-boolean v3, v7, Landroidx/work/c;->c:Z

    iput-boolean v3, v6, Landroidx/work/c;->c:Z

    iget v3, v7, Landroidx/work/c;->a:I

    iput v3, v6, Landroidx/work/c;->a:I

    iget-boolean v3, v7, Landroidx/work/c;->d:Z

    iput-boolean v3, v6, Landroidx/work/c;->d:Z

    iget-boolean v3, v7, Landroidx/work/c;->e:Z

    iput-boolean v3, v6, Landroidx/work/c;->e:Z

    iget-object v3, v7, Landroidx/work/c;->h:Landroidx/work/e;

    iput-object v3, v6, Landroidx/work/c;->h:Landroidx/work/e;

    iput-object v6, v1, LT0/i;->j:Landroidx/work/c;

    iget v3, v2, LT0/i;->k:I

    iput v3, v1, LT0/i;->k:I

    iget v3, v2, LT0/i;->l:I

    iput v3, v1, LT0/i;->l:I

    iget-wide v3, v2, LT0/i;->m:J

    iput-wide v3, v1, LT0/i;->m:J

    iget-wide v3, v2, LT0/i;->n:J

    iput-wide v3, v1, LT0/i;->n:J

    iget-wide v3, v2, LT0/i;->o:J

    iput-wide v3, v1, LT0/i;->o:J

    iget-wide v3, v2, LT0/i;->p:J

    iput-wide v3, v1, LT0/i;->p:J

    iget-boolean v3, v2, LT0/i;->q:Z

    iput-boolean v3, v1, LT0/i;->q:Z

    iget v2, v2, LT0/i;->r:I

    iput v2, v1, LT0/i;->r:I

    iput-object v1, p0, LJ2/e;->c:Ljava/lang/Object;

    iget-object v2, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LT0/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public l(Lj3/r0;Lj3/f0;)V
    .locals 4

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/r;

    iget-object v1, v0, Ll3/r;->i:Lj3/g;

    iget-object v1, v1, Lj3/g;->a:Lj3/v;

    iget-object v2, v0, Ll3/r;->f:Lj3/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p1, Lj3/r0;->a:Lj3/q0;

    sget-object v3, Lj3/q0;->d:Lj3/q0;

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lj3/v;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, LC4/v;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LC4/v;-><init>(I)V

    iget-object p2, v0, Ll3/r;->j:Ll3/s;

    invoke-interface {p2, p1}, Ll3/s;->n(LC4/v;)V

    sget-object p2, Lj3/r0;->h:Lj3/r0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClientCall was cancelled at or after deadline. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    new-instance p2, Lj3/f0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    :cond_1
    invoke-static {}, Ly3/b;->a()V

    new-instance v1, Ll3/p;

    invoke-direct {v1, p0, p1, p2}, Ll3/p;-><init>(LJ2/e;Lj3/r0;Lj3/f0;)V

    iget-object p1, v0, Ll3/r;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, LJ2/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Lc1/i;

    invoke-virtual {v0}, Lc1/i;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lc1/i;

    iget-object v0, v0, Lc1/i;->b:Ljava/lang/Object;

    check-cast v0, Ll1/v;

    invoke-virtual {v0}, Ll1/v;->reset()V

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public n(I)V
    .locals 4

    invoke-virtual {p0, p1}, LJ2/e;->y(I)I

    move-result p1

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, LI4/a;

    invoke-virtual {v0, p1}, LI4/a;->f(I)Z

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lu0/x;

    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lu0/W;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lu0/W;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called detach on an already detached child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lu0/W;->a(I)V

    :cond_2
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public o(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, LU0/i;

    invoke-virtual {v0, p1}, LU0/i;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    invoke-interface {v0}, Lz3/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    :try_start_0
    iget-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, LJ3/f;

    iget-object v1, v1, LJ3/f;->c:LE3/c;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->z(Ljava/lang/Throwable;)Lz3/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The CompletableConsumable returned is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p1, LC4/o;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, LC4/o;-><init>(Ljava/lang/Object;I)V

    check-cast v1, Lz3/a;

    invoke-virtual {v1, p1}, Lz3/a;->d(Lz3/b;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    new-instance v2, LC3/b;

    filled-new-array {v1, p1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, LC3/b;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public p(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/S;
    .locals 5

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/X;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/lifecycle/X;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/S;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/V;

    if-eqz v2, :cond_2

    instance-of p1, v3, Landroidx/lifecycle/P;

    if-eqz p1, :cond_0

    check-cast v3, Landroidx/lifecycle/P;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object p1, v3, Landroidx/lifecycle/P;->d:Landroidx/lifecycle/o;

    if-eqz p1, :cond_1

    iget-object p2, v3, Landroidx/lifecycle/P;->e:Ly0/c;

    invoke-static {p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-static {v1, p2, p1}, Landroidx/lifecycle/M;->a(Landroidx/lifecycle/S;Ly0/c;Landroidx/lifecycle/o;)V

    :cond_1
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v1, Li0/d;

    iget-object v2, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, Li0/b;

    invoke-direct {v1, v2}, Li0/d;-><init>(Li0/b;)V

    sget-object v2, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/T;

    iget-object v4, v1, Li0/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v3, p1, v1}, Landroidx/lifecycle/V;->b(Ljava/lang/Class;Li0/d;)Landroidx/lifecycle/S;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {v3, p1}, Landroidx/lifecycle/V;->a(Ljava/lang/Class;)Landroidx/lifecycle/S;

    move-result-object p1

    :goto_1
    const-string v1, "viewModel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/S;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/lifecycle/S;->b()V

    :cond_3
    return-object p1
.end method

.method public q(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, LJ2/e;->y(I)I

    move-result p1

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lu0/x;

    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public r()I
    .locals 2

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lu0/x;

    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public s(I)Landroid/content/res/ColorStateList;
    .locals 3

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1}, LC/i;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public t(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1}, LL4/d;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LJ2/e;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, LI4/a;

    invoke-virtual {v1}, LI4/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "addrs"

    iget-object v2, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    iget-object v2, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, Lj3/b;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, [[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v1, v2}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public u(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ll/t;->a()Ll/t;

    move-result-object v0

    iget-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Ll/t;->a:Ll/J0;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Ll/J0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public v(IILl/T;)Landroid/graphics/Typeface;
    .locals 9

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 p1, 0x0

    if-nez v3, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/TypedValue;

    sget-object v0, LD/p;->a:Ljava/lang/ThreadLocal;

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v7, 0x1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, LD/p;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILD/b;ZZ)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public w()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 10

    iget v0, p0, LJ2/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Lc1/i;

    iget-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Lf1/f;

    iget-object v2, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb1/d;

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ll1/v;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lc1/i;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v7, v8, v1}, Ll1/v;-><init>(Ljava/io/InputStream;Lf1/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v5, v7}, Lb1/d;->b(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Ll1/v;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-virtual {v0}, Lc1/i;->e()Landroid/os/ParcelFileDescriptor;

    sget-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v7

    goto :goto_1

    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ll1/v;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    invoke-virtual {v0}, Lc1/i;->e()Landroid/os/ParcelFileDescriptor;

    throw v1

    :cond_2
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_2
    return-object v5

    :pswitch_0
    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lc1/i;

    iget-object v0, v0, Lc1/i;->b:Ljava/lang/Object;

    check-cast v0, Ll1/v;

    invoke-virtual {v0}, Ll1/v;->reset()V

    iget-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, Lf1/f;

    invoke-static {v2, v0, v1}, LW2/B;->p(Lf1/f;Ljava/io/InputStream;Ljava/util/ArrayList;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public x(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Class;

    invoke-static {p1, v0, v1}, LJ2/e;->z(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public y(I)I
    .locals 5

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Lu0/x;

    iget-object v1, v1, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v3, LI4/a;

    invoke-virtual {v3, v2}, LI4/a;->b(I)I

    move-result v4

    sub-int v4, v2, v4

    sub-int v4, p1, v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, LI4/a;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v4

    goto :goto_0

    :cond_3
    return v0
.end method
