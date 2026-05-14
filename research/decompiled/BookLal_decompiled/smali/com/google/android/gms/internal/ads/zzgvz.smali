.class public Lcom/google/android/gms/internal/ads/zzgvz;
.super Lcom/google/android/gms/internal/ads/zzgvu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgvu<",
        "TK;TV;>;",
        "Lcom/google/android/gms/internal/ads/zzgwu<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient emptySet:Lcom/google/android/gms/internal/ads/zzgvw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgvw<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient zza:Lcom/google/android/gms/internal/ads/zzgvw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgvp;ILjava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgvu;-><init>(Lcom/google/android/gms/internal/ads/zzgvp;I)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:Lcom/google/android/gms/internal/ads/zzgxn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvz;->emptySet:Lcom/google/android/gms/internal/ads/zzgvw;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgvw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvz;->zza:Lcom/google/android/gms/internal/ads/zzgvw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgvy;-><init>(Lcom/google/android/gms/internal/ads/zzgvz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvz;->zza:Lcom/google/android/gms/internal/ads/zzgvw;

    :cond_0
    return-object v0
.end method
