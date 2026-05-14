.class public abstract LA/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const v0, 0x7f04002f

    const v1, 0x7f04026b

    const v2, 0x10101a5

    const v3, 0x101031f

    const v4, 0x1010647

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, LA/a;->a:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LA/a;->b:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, LA/a;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0401fa
        0x7f0401fb
        0x7f0401fc
        0x7f0401fd
        0x7f0401fe
        0x7f0401ff
        0x7f040200
    .end array-data

    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x101056f
        0x1010570
        0x7f0401f8
        0x7f040201
        0x7f040202
        0x7f040203
        0x7f04048c
    .end array-data
.end method
