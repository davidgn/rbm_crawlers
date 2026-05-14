.class public abstract Lf2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Lg0/a;

.field public static final c:Lg0/a;

.field public static final d:Lg0/a;

.field public static final e:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lf2/a;->a:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Lg0/a;

    invoke-direct {v0}, Lg0/a;-><init>()V

    sput-object v0, Lf2/a;->b:Lg0/a;

    new-instance v0, Lg0/a;

    sget-object v1, Lg0/a;->c:[F

    invoke-direct {v0, v1}, Lg0/b;-><init>([F)V

    sput-object v0, Lf2/a;->c:Lg0/a;

    new-instance v0, Lg0/a;

    sget-object v1, Lg0/a;->e:[F

    invoke-direct {v0, v1}, Lg0/b;-><init>([F)V

    sput-object v0, Lf2/a;->d:Lg0/a;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lf2/a;->e:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public static a(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    return p1
.end method
