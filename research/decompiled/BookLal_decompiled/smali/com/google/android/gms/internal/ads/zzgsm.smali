.class final enum Lcom/google/android/gms/internal/ads/zzgsm;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsk;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzgsm;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzgsm;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzgsm;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzgsm;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzgsm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsm;

    const-string v1, "ALWAYS_TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgsm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsm;->zza:Lcom/google/android/gms/internal/ads/zzgsm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsm;

    const-string v2, "ALWAYS_FALSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgsm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgsm;->zzb:Lcom/google/android/gms/internal/ads/zzgsm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgsm;

    const-string v3, "IS_NULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgsm;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzgsm;->zzc:Lcom/google/android/gms/internal/ads/zzgsm;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgsm;

    const-string v4, "NOT_NULL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgsm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgsm;->zzd:Lcom/google/android/gms/internal/ads/zzgsm;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/ads/zzgsm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsm;->zze:[Lcom/google/android/gms/internal/ads/zzgsm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzgsm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsm;->zze:[Lcom/google/android/gms/internal/ads/zzgsm;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzgsm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzgsm;

    return-object v0
.end method


# virtual methods
.method public final synthetic toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Predicates.notNull()"

    return-object v0

    :cond_1
    const-string v0, "Predicates.isNull()"

    return-object v0

    :cond_2
    const-string v0, "Predicates.alwaysFalse()"

    return-object v0

    :cond_3
    const-string v0, "Predicates.alwaysTrue()"

    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    if-nez p1, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method
