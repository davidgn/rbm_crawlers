.class public final Ld1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld1/c;

.field public final b:Lf1/f;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ld1/c;Lf1/f;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld1/d;->a:Ld1/c;

    iput-object p3, p0, Ld1/d;->b:Lf1/f;

    iput-object p4, p0, Ld1/d;->c:Landroid/content/ContentResolver;

    iput-object p1, p0, Ld1/d;->d:Ljava/util/ArrayList;

    return-void
.end method
