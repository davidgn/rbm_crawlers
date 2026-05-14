.class final synthetic Lcom/google/android/gms/internal/ads/zzabq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzabq;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabq;->zza:Lcom/google/android/gms/internal/ads/zzabq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzabp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzabp;->zzc:F

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzabp;->zzc:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
