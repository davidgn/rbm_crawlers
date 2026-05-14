.class public final Lx4/g;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final a:Lx4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx4/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/j;-><init>(I)V

    sput-object v0, Lx4/g;->a:Lx4/g;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lb4/f;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
