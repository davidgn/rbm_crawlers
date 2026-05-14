.class public final Lp1/b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public final a:Lp1/g;


# direct methods
.method public constructor <init>(Lp1/g;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lp1/b;->a:Lp1/g;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Lp1/c;

    invoke-direct {v0, p0}, Lp1/c;-><init>(Lp1/b;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    new-instance p1, Lp1/c;

    invoke-direct {p1, p0}, Lp1/c;-><init>(Lp1/b;)V

    return-object p1
.end method
