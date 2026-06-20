.class public final Lcom/braze/Braze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braze/IBraze;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/Braze$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00c2\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0007\u0018\u0000 \u00ec\u00012\u00020\u0001:\u0002\u00ec\u0001B\u0015\u0008\u0001\u0012\u0008\u0010\u00e9\u0001\u001a\u00030\u00ae\u0001\u00a2\u0006\u0006\u0008\u00ea\u0001\u0010\u00eb\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002Ja\u0010\u001b\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u00028\u00002\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00022\'\u0010\u001a\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0015\u00a2\u0006\u0002\u0008\u0019H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0012\u0010\u001f\u001a\u00020\u00042\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010 \u001a\u00020\u00042\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010\"\u001a\u00020\u00042\u0008\u0010!\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u0010\"\u001a\u00020\u00042\u0008\u0010!\u001a\u0004\u0018\u00010\r2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016J&\u0010)\u001a\u00020\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\r2\u0008\u0010&\u001a\u0004\u0018\u00010\r2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0016J0\u0010)\u001a\u00020\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\r2\u0008\u0010&\u001a\u0004\u0018\u00010\r2\u0008\u0010(\u001a\u0004\u0018\u00010\'2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016J.\u0010)\u001a\u00020\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\r2\u0008\u0010&\u001a\u0004\u0018\u00010\r2\u0008\u0010(\u001a\u0004\u0018\u00010\'2\u0006\u0010+\u001a\u00020*H\u0016J8\u0010)\u001a\u00020\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\r2\u0008\u0010&\u001a\u0004\u0018\u00010\r2\u0008\u0010(\u001a\u0004\u0018\u00010\'2\u0006\u0010+\u001a\u00020*2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010-\u001a\u00020\u00042\u0008\u0010,\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010-\u001a\u00020\u00042\u0008\u0010/\u001a\u0004\u0018\u00010.H\u0016J&\u00102\u001a\u00020\u00042\u0008\u0010,\u001a\u0004\u0018\u00010\r2\u0008\u00100\u001a\u0004\u0018\u00010\r2\u0008\u00101\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u00104\u001a\u00020\u00042\u0008\u0010,\u001a\u0004\u0018\u00010\r2\u0008\u00103\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u00105\u001a\u00020\u0004H\u0016J\u0008\u00106\u001a\u00020\u0004H\u0016J\u0008\u00107\u001a\u00020\u0004H\u0016J\u0010\u00109\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u0002H\u0016J\u0008\u0010:\u001a\u00020\u0004H\u0016J\u000e\u0010=\u001a\u0008\u0012\u0004\u0012\u00020<0;H\u0016J\u0010\u0010?\u001a\u00020<2\u0006\u0010>\u001a\u00020\rH\u0016J\u0008\u0010@\u001a\u00020\u0004H\u0016J\u0016\u0010D\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020B0AH\u0016J\u0016\u0010F\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020E0AH\u0016J\u0016\u0010H\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020G0AH\u0016J\u0016\u0010J\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020I0AH\u0016J\u0016\u0010L\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020K0AH\u0016J\u0016\u0010N\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020M0AH\u0016J\u0016\u0010P\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020O0AH\u0016J\u0016\u0010R\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020Q0AH\u0016J\u0016\u0010T\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020S0AH\u0016J*\u0010W\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00102\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00000A2\u000c\u0010V\u001a\u0008\u0012\u0004\u0012\u00028\u00000UH\u0016J,\u0010X\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00102\u000e\u0010C\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010A2\u000c\u0010V\u001a\u0008\u0012\u0004\u0012\u00028\u00000UH\u0016J\u0012\u0010Z\u001a\u00020\u00042\u0008\u0010Y\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u0010Z\u001a\u00020\u00042\u0008\u0010Y\u001a\u0004\u0018\u00010\r2\u0008\u0010[\u001a\u0004\u0018\u00010\rH\u0016J\u0016\u0010_\u001a\u00020\u00042\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020]0\\H\u0016J\u0008\u0010`\u001a\u00020*H\u0016J\u0008\u0010a\u001a\u00020*H\u0016J\u0008\u0010c\u001a\u00020bH\u0016J\u0010\u0010e\u001a\n\u0012\u0004\u0012\u00020d\u0018\u00010;H\u0016J\u0014\u0010g\u001a\u0004\u0018\u00010d2\u0008\u0010f\u001a\u0004\u0018\u00010\rH\u0016J\u0014\u0010g\u001a\u0004\u0018\u00010d2\u0008\u0010i\u001a\u0004\u0018\u00010hH\u0016J\u0012\u0010k\u001a\u00020\u00042\u0008\u0010j\u001a\u0004\u0018\u00010\rH\u0017J\u0012\u0010l\u001a\u00020\u00042\u0008\u0010j\u001a\u0004\u0018\u00010\rH\u0017J\u0014\u0010o\u001a\u0004\u0018\u00010n2\u0008\u0010m\u001a\u0004\u0018\u00010\rH\u0016J\u0018\u0010s\u001a\u00020\u00042\u0006\u0010q\u001a\u00020p2\u0006\u0010r\u001a\u00020pH\u0016J\u0008\u0010t\u001a\u00020\u0004H\u0016J\u0018\u0010w\u001a\u00020\u00042\u0006\u0010u\u001a\u00020\r2\u0006\u0010v\u001a\u00020\u0002H\u0016J\u0010\u0010y\u001a\u00020\u00042\u0006\u0010x\u001a\u00020\rH\u0016J#\u0010\u007f\u001a\u00020\u00042\u0008\u0010z\u001a\u0004\u0018\u00010\r2\u0008\u0010|\u001a\u0004\u0018\u00010{H\u0000\u00a2\u0006\u0004\u0008}\u0010~J\u001e\u0010\u0084\u0001\u001a\u00020\u00042\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0080\u0001H\u0000\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0083\u0001J\u001b\u0010\u0084\u0001\u001a\u00020\u00042\u0007\u0010\u0085\u0001\u001a\u00020\u0002H\u0000\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0086\u0001J%\u0010\u008a\u0001\u001a\u00020\u00042\u0007\u0010\u0087\u0001\u001a\u00020\r2\u0008\u0010Y\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J\u001c\u0010\u008c\u0001\u001a\u00020\u00042\u0008\u0010\u0081\u0001\u001a\u00030\u0080\u0001H\u0000\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u0083\u0001J\u0012\u0010\u008f\u0001\u001a\u00020\u0004H\u0000\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008e\u0001J\u0012\u0010\u0091\u0001\u001a\u00020\u0004H\u0000\u00a2\u0006\u0006\u0008\u0090\u0001\u0010\u008e\u0001J\u001a\u0010\u0094\u0001\u001a\u00020\u00042\u0006\u0010/\u001a\u00020.H\u0000\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001J\u0012\u0010\u0096\u0001\u001a\u00020\u0004H\u0000\u00a2\u0006\u0006\u0008\u0095\u0001\u0010\u008e\u0001J\u001b\u0010\u009a\u0001\u001a\u00020\u00042\u0007\u0010\u0097\u0001\u001a\u00020BH\u0000\u00a2\u0006\u0006\u0008\u0098\u0001\u0010\u0099\u0001J&\u0010\u00a1\u0001\u001a\u00020\u00042\u0008\u0010\u009c\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u009e\u0001\u001a\u00030\u009d\u0001H\u0000\u00a2\u0006\u0006\u0008\u009f\u0001\u0010\u00a0\u0001J\u0012\u0010\u00a3\u0001\u001a\u00020\u0004H\u0001\u00a2\u0006\u0006\u0008\u00a2\u0001\u0010\u008e\u0001J:\u0010\u00a6\u0001\u001a\u00020\u00042\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00022\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012H\u0001\u00a2\u0006\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R*\u0010\u00a8\u0001\u001a\u00030\u00a7\u00018\u0016@\u0016X\u0096.\u00a2\u0006\u0018\n\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001\u001a\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001\"\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u001a\u0010\u00af\u0001\u001a\u00030\u00ae\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u0019\u0010\u00b1\u0001\u001a\u00020]8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R3\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u00028\u0000@\u0000X\u0081\u000e\u00a2\u0006 \n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001\u0012\u0006\u0008\u00b9\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001\"\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u0019\u0010\u00ba\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R2\u0010\u00bd\u0001\u001a\u00030\u00bc\u00018\u0000@\u0000X\u0081.\u00a2\u0006 \n\u0006\u0008\u00bd\u0001\u0010\u00be\u0001\u0012\u0006\u0008\u00c3\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001\"\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001R\u0019\u0010\u00c6\u0001\u001a\u0004\u0018\u00010G8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R2\u0010\u00c8\u0001\u001a\u00030\u00c7\u00018\u0000@\u0000X\u0081.\u00a2\u0006 \n\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001\u0012\u0006\u0008\u00ce\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001\"\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R2\u0010\u00d0\u0001\u001a\u00030\u00cf\u00018\u0000@\u0000X\u0081\u000e\u00a2\u0006 \n\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001\u0012\u0006\u0008\u00d6\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001\"\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001R2\u0010\u00d8\u0001\u001a\u00030\u00d7\u00018\u0000@\u0000X\u0081.\u00a2\u0006 \n\u0006\u0008\u00d8\u0001\u0010\u00d9\u0001\u0012\u0006\u0008\u00de\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u00da\u0001\u0010\u00db\u0001\"\u0006\u0008\u00dc\u0001\u0010\u00dd\u0001R\u0017\u0010\u00e1\u0001\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00df\u0001\u0010\u00e0\u0001R\u0018\u0010\u00e3\u0001\u001a\u0004\u0018\u00010]8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008_\u0010\u00e2\u0001R.\u0010\u00e8\u0001\u001a\u0004\u0018\u00010\r2\t\u0010\u00e4\u0001\u001a\u0004\u0018\u00010\r8V@VX\u0096\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00e5\u0001\u0010\u00e0\u0001\"\u0006\u0008\u00e6\u0001\u0010\u00e7\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00ed\u0001"
    }
    d2 = {
        "Lcom/braze/Braze;",
        "Lcom/braze/IBraze;",
        "",
        "isOffline",
        "",
        "setSyncPolicyOfflineStatus",
        "",
        "throwable",
        "publishError",
        "verifyProperSdkSetup",
        "Lbo/app/n6;",
        "dependencyProvider",
        "setUserSpecificMemberVariablesAndStartDispatch",
        "",
        "key",
        "isEphemeralEventKey",
        "T",
        "defaultValueOnException",
        "Lkotlin/Function0;",
        "errorLog",
        "earlyReturnIfDisabled",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "runForResult",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "Landroid/app/Activity;",
        "activity",
        "openSession",
        "closeSession",
        "eventName",
        "logCustomEvent",
        "Lcom/braze/models/outgoing/BrazeProperties;",
        "properties",
        "productId",
        "currencyCode",
        "Ljava/math/BigDecimal;",
        "price",
        "logPurchase",
        "",
        "quantity",
        "campaignId",
        "logPushNotificationOpened",
        "Landroid/content/Intent;",
        "intent",
        "actionId",
        "actionType",
        "logPushNotificationActionClicked",
        "pageId",
        "logPushStoryPageClicked",
        "logFeedDisplayed",
        "requestFeedRefreshFromCache",
        "requestFeedRefresh",
        "fromCache",
        "requestContentCardsRefresh",
        "refreshFeatureFlags",
        "",
        "Lcom/braze/models/FeatureFlag;",
        "getAllFeatureFlags",
        "id",
        "getFeatureFlag",
        "requestImmediateDataFlush",
        "Lcom/braze/events/IEventSubscriber;",
        "Lcom/braze/events/InAppMessageEvent;",
        "subscriber",
        "subscribeToNewInAppMessages",
        "Lcom/braze/events/NoMatchingTriggerEvent;",
        "subscribeToNoMatchingTriggerForEvent",
        "Lcom/braze/events/ContentCardsUpdatedEvent;",
        "subscribeToContentCardsUpdates",
        "Lcom/braze/events/FeatureFlagsUpdatedEvent;",
        "subscribeToFeatureFlagsUpdates",
        "Lcom/braze/events/FeedUpdatedEvent;",
        "subscribeToFeedUpdates",
        "Lcom/braze/events/SessionStateChangedEvent;",
        "subscribeToSessionUpdates",
        "Lcom/braze/events/BrazeNetworkFailureEvent;",
        "subscribeToNetworkFailures",
        "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;",
        "subscribeToSdkAuthenticationFailures",
        "Lcom/braze/events/BrazePushEvent;",
        "subscribeToPushNotificationEvents",
        "Ljava/lang/Class;",
        "eventClass",
        "addSingleSynchronousSubscription",
        "removeSingleSubscription",
        "userId",
        "changeUser",
        "sdkAuthSignature",
        "Lcom/braze/events/IValueCallback;",
        "Lcom/braze/BrazeUser;",
        "completionCallback",
        "getCurrentUser",
        "getContentCardCount",
        "getContentCardUnviewedCount",
        "",
        "getContentCardsLastUpdatedInSecondsFromEpoch",
        "Lcom/braze/models/cards/Card;",
        "getCachedContentCards",
        "contentCardString",
        "deserializeContentCard",
        "Lorg/json/JSONObject;",
        "contentCardJson",
        "cardId",
        "logFeedCardImpression",
        "logFeedCardClick",
        "inAppMessageString",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "deserializeInAppMessageString",
        "",
        "latitude",
        "longitude",
        "requestGeofences",
        "requestLocationInitialization",
        "googleAdvertisingId",
        "isLimitAdTrackingEnabled",
        "setGoogleAdvertisingId",
        "signature",
        "setSdkAuthenticationSignature",
        "geofenceId",
        "Lcom/braze/enums/GeofenceTransitionType;",
        "transitionType",
        "recordGeofenceTransition$android_sdk_base_release",
        "(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V",
        "recordGeofenceTransition",
        "Lcom/braze/models/IBrazeLocation;",
        "location",
        "requestGeofenceRefresh$android_sdk_base_release",
        "(Lcom/braze/models/IBrazeLocation;)V",
        "requestGeofenceRefresh",
        "ignoreRateLimit",
        "(Z)V",
        "serializedCardJson",
        "addSerializedCardJsonToStorage$android_sdk_base_release",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "addSerializedCardJsonToStorage",
        "logLocationRecordedEventFromLocationUpdate$android_sdk_base_release",
        "logLocationRecordedEventFromLocationUpdate",
        "requestGeofencesInitialization$android_sdk_base_release",
        "()V",
        "requestGeofencesInitialization",
        "requestSingleLocationUpdate$android_sdk_base_release",
        "requestSingleLocationUpdate",
        "handleInAppMessageTestPush$android_sdk_base_release",
        "(Landroid/content/Intent;)V",
        "handleInAppMessageTestPush",
        "applyPendingRuntimeConfiguration$android_sdk_base_release",
        "applyPendingRuntimeConfiguration",
        "event",
        "retryInAppMessage$android_sdk_base_release",
        "(Lcom/braze/events/InAppMessageEvent;)V",
        "retryInAppMessage",
        "Lcom/braze/enums/BrazePushEventType;",
        "pushActionType",
        "Lcom/braze/models/push/BrazeNotificationPayload;",
        "payload",
        "publishBrazePushAction$android_sdk_base_release",
        "(Lcom/braze/enums/BrazePushEventType;Lcom/braze/models/push/BrazeNotificationPayload;)V",
        "publishBrazePushAction",
        "waitForUserDependencyThread$android_sdk_base_release",
        "waitForUserDependencyThread",
        "run$android_sdk_base_release",
        "(Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;)V",
        "run",
        "Lcom/braze/images/IBrazeImageLoader;",
        "imageLoader",
        "Lcom/braze/images/IBrazeImageLoader;",
        "getImageLoader",
        "()Lcom/braze/images/IBrazeImageLoader;",
        "setImageLoader",
        "(Lcom/braze/images/IBrazeImageLoader;)V",
        "Landroid/content/Context;",
        "applicationContext",
        "Landroid/content/Context;",
        "brazeUser",
        "Lcom/braze/BrazeUser;",
        "isApiKeyPresent",
        "Ljava/lang/Boolean;",
        "isApiKeyPresent$android_sdk_base_release",
        "()Ljava/lang/Boolean;",
        "setApiKeyPresent$android_sdk_base_release",
        "(Ljava/lang/Boolean;)V",
        "isApiKeyPresent$android_sdk_base_release$annotations",
        "isInstanceStopped",
        "Z",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "configurationProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "getConfigurationProvider$android_sdk_base_release",
        "()Lcom/braze/configuration/BrazeConfigurationProvider;",
        "setConfigurationProvider$android_sdk_base_release",
        "(Lcom/braze/configuration/BrazeConfigurationProvider;)V",
        "getConfigurationProvider$android_sdk_base_release$annotations",
        "getCachedContentCardsUpdatedEvent",
        "()Lcom/braze/events/ContentCardsUpdatedEvent;",
        "cachedContentCardsUpdatedEvent",
        "Lbo/app/d2;",
        "deviceIdReader",
        "Lbo/app/d2;",
        "getDeviceIdReader$android_sdk_base_release",
        "()Lbo/app/d2;",
        "setDeviceIdReader$android_sdk_base_release",
        "(Lbo/app/d2;)V",
        "getDeviceIdReader$android_sdk_base_release$annotations",
        "Lbo/app/g2;",
        "externalIEventMessenger",
        "Lbo/app/g2;",
        "getExternalIEventMessenger$android_sdk_base_release",
        "()Lbo/app/g2;",
        "setExternalIEventMessenger$android_sdk_base_release",
        "(Lbo/app/g2;)V",
        "getExternalIEventMessenger$android_sdk_base_release$annotations",
        "Lbo/app/y2;",
        "udm",
        "Lbo/app/y2;",
        "getUdm$android_sdk_base_release",
        "()Lbo/app/y2;",
        "setUdm$android_sdk_base_release",
        "(Lbo/app/y2;)V",
        "getUdm$android_sdk_base_release$annotations",
        "getDeviceId",
        "()Ljava/lang/String;",
        "deviceId",
        "()Lcom/braze/BrazeUser;",
        "currentUser",
        "value",
        "getRegisteredPushToken",
        "setRegisteredPushToken",
        "(Ljava/lang/String;)V",
        "registeredPushToken",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/braze/Braze$Companion;

.field private static final KNOWN_APP_CRAWLER_DEVICE_MODELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NECESSARY_BRAZE_SDK_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static areOutboundNetworkRequestsOffline:Z

.field private static final brazeClassLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final clearConfigSentinel:Lcom/braze/configuration/BrazeConfig;

.field private static customBrazeNotificationFactory:Lcom/braze/IBrazeNotificationFactory;

.field private static endpointProvider:Lcom/braze/IBrazeEndpointProvider;

.field private static final endpointProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static volatile instance:Lcom/braze/Braze;

.field private static final pendingConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/configuration/BrazeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static sdkEnablementProvider:Lbo/app/v4;

.field private static shouldMockNetworkRequestsAndDropEvents:Z


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private brazeUser:Lcom/braze/BrazeUser;

.field public configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

.field public deviceIdReader:Lbo/app/d2;

.field private externalIEventMessenger:Lbo/app/g2;

.field public imageLoader:Lcom/braze/images/IBrazeImageLoader;

.field private isApiKeyPresent:Ljava/lang/Boolean;

.field private isInstanceStopped:Z

.field private offlineUserStorageProvider:Lbo/app/r3;

.field private registrationDataProvider:Lbo/app/j2;

.field public udm:Lbo/app/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/braze/Braze$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/Braze$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/braze/Braze;->brazeClassLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    const-string v0, "calypso appcrawler"

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/braze/Braze;->KNOWN_APP_CRAWLER_DEVICE_MODELS:Ljava/util/Set;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 9
    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    .line 10
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/braze/Braze;->NECESSARY_BRAZE_SDK_PERMISSIONS:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/braze/Braze;->endpointProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/braze/Braze;->pendingConfigurations:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/braze/configuration/BrazeConfig$Builder;

    invoke-direct {v0}, Lcom/braze/configuration/BrazeConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfig$Builder;->build()Lcom/braze/configuration/BrazeConfig;

    move-result-object v0

    sput-object v0, Lcom/braze/Braze;->clearConfigSentinel:Lcom/braze/configuration/BrazeConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 35
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/Braze$a;->b:Lcom/braze/Braze$a;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v9

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context.applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    .line 37
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 38
    sget-object v3, Lcom/braze/Braze;->KNOWN_APP_CRAWLER_DEVICE_MODELS:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$b;

    invoke-direct {v6, v2}, Lcom/braze/Braze$b;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, v9

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 43
    sget-object v2, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v2}, Lcom/braze/Braze$Companion;->enableMockNetworkRequestsAndDropEventsMode()Z

    .line 46
    :cond_0
    new-instance v2, Lcom/braze/images/DefaultBrazeImageLoader;

    iget-object v3, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/braze/images/DefaultBrazeImageLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/braze/Braze;->setImageLoader(Lcom/braze/images/IBrazeImageLoader;)V

    .line 47
    new-instance v2, Lbo/app/a1;

    sget-object v3, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v4, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/braze/Braze$Companion;->access$getSdkEnablementProvider(Lcom/braze/Braze$Companion;Landroid/content/Context;)Lbo/app/v4;

    move-result-object v3

    invoke-direct {v2, v3}, Lbo/app/a1;-><init>(Lbo/app/v4;)V

    iput-object v2, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    .line 49
    sget-object v2, Lcom/braze/Braze$c;->b:Lcom/braze/Braze$c;

    new-instance v3, Lcom/braze/Braze$d;

    invoke-direct {v3, p0, p1}, Lcom/braze/Braze$d;-><init>(Lcom/braze/Braze;Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/braze/Braze;->run$android_sdk_base_release(Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 120
    new-instance v6, Lcom/braze/Braze$e;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/braze/Braze$e;-><init>(JJ)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v9

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getApplicationContext$p(Lcom/braze/Braze;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getAreOutboundNetworkRequestsOffline$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/braze/Braze;->areOutboundNetworkRequestsOffline:Z

    return v0
.end method

.method public static final synthetic access$getBrazeClassLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->brazeClassLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getBrazeUser$p(Lcom/braze/Braze;)Lcom/braze/BrazeUser;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/braze/Braze;->brazeUser:Lcom/braze/BrazeUser;

    return-object p0
.end method

.method public static final synthetic access$getClearConfigSentinel$cp()Lcom/braze/configuration/BrazeConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->clearConfigSentinel:Lcom/braze/configuration/BrazeConfig;

    return-object v0
.end method

.method public static final synthetic access$getCustomBrazeNotificationFactory$cp()Lcom/braze/IBrazeNotificationFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->customBrazeNotificationFactory:Lcom/braze/IBrazeNotificationFactory;

    return-object v0
.end method

.method public static final synthetic access$getEndpointProvider$cp()Lcom/braze/IBrazeEndpointProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->endpointProvider:Lcom/braze/IBrazeEndpointProvider;

    return-object v0
.end method

.method public static final synthetic access$getEndpointProviderLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->endpointProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/braze/Braze;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->instance:Lcom/braze/Braze;

    return-object v0
.end method

.method public static final synthetic access$getOfflineUserStorageProvider$p(Lcom/braze/Braze;)Lbo/app/r3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/braze/Braze;->offlineUserStorageProvider:Lbo/app/r3;

    return-object p0
.end method

.method public static final synthetic access$getPendingConfigurations$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->pendingConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getRegistrationDataProvider$p(Lcom/braze/Braze;)Lbo/app/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/braze/Braze;->registrationDataProvider:Lbo/app/j2;

    return-object p0
.end method

.method public static final synthetic access$getSdkEnablementProvider$cp()Lbo/app/v4;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->sdkEnablementProvider:Lbo/app/v4;

    return-object v0
.end method

.method public static final synthetic access$getShouldMockNetworkRequestsAndDropEvents$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/braze/Braze;->shouldMockNetworkRequestsAndDropEvents:Z

    return v0
.end method

.method public static final synthetic access$isEphemeralEventKey(Lcom/braze/Braze;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/braze/Braze;->isEphemeralEventKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isInstanceStopped$p(Lcom/braze/Braze;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/braze/Braze;->isInstanceStopped:Z

    return p0
.end method

.method public static final synthetic access$publishError(Lcom/braze/Braze;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$setAreOutboundNetworkRequestsOffline$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/braze/Braze;->areOutboundNetworkRequestsOffline:Z

    return-void
.end method

.method public static final synthetic access$setCustomBrazeNotificationFactory$cp(Lcom/braze/IBrazeNotificationFactory;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->customBrazeNotificationFactory:Lcom/braze/IBrazeNotificationFactory;

    return-void
.end method

.method public static final synthetic access$setEndpointProvider$cp(Lcom/braze/IBrazeEndpointProvider;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->endpointProvider:Lcom/braze/IBrazeEndpointProvider;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/braze/Braze;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->instance:Lcom/braze/Braze;

    return-void
.end method

.method public static final synthetic access$setInstanceStopped$p(Lcom/braze/Braze;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/Braze;->isInstanceStopped:Z

    return-void
.end method

.method public static final synthetic access$setOfflineUserStorageProvider$p(Lcom/braze/Braze;Lbo/app/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->offlineUserStorageProvider:Lbo/app/r3;

    return-void
.end method

.method public static final synthetic access$setRegistrationDataProvider$p(Lcom/braze/Braze;Lbo/app/j2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->registrationDataProvider:Lbo/app/j2;

    return-void
.end method

.method public static final synthetic access$setSdkEnablementProvider$cp(Lbo/app/v4;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->sdkEnablementProvider:Lbo/app/v4;

    return-void
.end method

.method public static final synthetic access$setShouldMockNetworkRequestsAndDropEvents$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/braze/Braze;->shouldMockNetworkRequestsAndDropEvents:Z

    return-void
.end method

.method public static final synthetic access$setSyncPolicyOfflineStatus(Lcom/braze/Braze;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/braze/Braze;->setSyncPolicyOfflineStatus(Z)V

    return-void
.end method

.method public static final synthetic access$setUserSpecificMemberVariablesAndStartDispatch(Lcom/braze/Braze;Lbo/app/n6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/braze/Braze;->setUserSpecificMemberVariablesAndStartDispatch(Lbo/app/n6;)V

    return-void
.end method

.method public static final synthetic access$verifyProperSdkSetup(Lcom/braze/Braze;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/braze/Braze;->verifyProperSdkSetup()V

    return-void
.end method

.method public static final addSdkMetadata(Landroid/content/Context;Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;)V"
        }
    .end annotation
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/Braze$Companion;->addSdkMetadata(Landroid/content/Context;Ljava/util/EnumSet;)V

    return-void
.end method

.method public static final clearEndpointProvider()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->clearEndpointProvider()V

    return-void
.end method

.method public static final configure(Landroid/content/Context;Lcom/braze/configuration/BrazeConfig;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/Braze$Companion;->configure(Landroid/content/Context;Lcom/braze/configuration/BrazeConfig;)Z

    move-result p0

    return p0
.end method

.method public static final disableSdk(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->disableSdk(Landroid/content/Context;)V

    return-void
.end method

.method public static final enableMockNetworkRequestsAndDropEventsMode()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->enableMockNetworkRequestsAndDropEventsMode()Z

    move-result v0

    return v0
.end method

.method public static final enableSdk(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->enableSdk(Landroid/content/Context;)V

    return-void
.end method

.method public static final getApiEndpoint(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->getApiEndpoint(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;
    .locals 7

    .line 1
    sget-object v2, Lcom/braze/Braze$l;->b:Lcom/braze/Braze$l;

    new-instance v4, Lcom/braze/Braze$m;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/braze/Braze$m;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->runForResult$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/events/ContentCardsUpdatedEvent;

    return-object v0
.end method

.method public static synthetic getConfigurationProvider$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static final getConfiguredApiKey(Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->getConfiguredApiKey(Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getCustomBrazeNotificationFactory()Lcom/braze/IBrazeNotificationFactory;
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->getCustomBrazeNotificationFactory()Lcom/braze/IBrazeNotificationFactory;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getDeviceIdReader$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getExternalIEventMessenger$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/braze/Braze;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p0

    return-object p0
.end method

.method public static final getOutboundNetworkRequestsOffline()Z
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->getOutboundNetworkRequestsOffline()Z

    move-result v0

    return v0
.end method

.method private static synthetic getRegistrationDataProvider$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUdm$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isApiKeyPresent$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static final isDisabled()Z
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result v0

    return v0
.end method

.method private final isEphemeralEventKey(Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->isEphemeralEventsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lcom/braze/Braze$n0;->b:Lcom/braze/Braze$n0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v8

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getEphemeralEventKeys()Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 7
    new-instance v4, Lcom/braze/Braze$o0;

    invoke-direct {v4, p1, v0, v9}, Lcom/braze/Braze$o0;-><init>(Ljava/lang/String;Ljava/util/Set;Z)V

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v9
.end method

.method private final publishError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->udm:Lbo/app/y2;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$l1;->b:Lcom/braze/Braze$l1;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->k()Lbo/app/a1;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1, v1}, Lbo/app/a1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v3, Lcom/braze/Braze$m1;

    invoke-direct {v3, p1}, Lcom/braze/Braze$m1;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public static synthetic run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/braze/Braze;->run$android_sdk_base_release(Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final runForResult(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {p3}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    .line 5
    :cond_0
    :try_start_0
    new-instance p3, Lcom/braze/Braze$t2;

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0}, Lcom/braze/Braze$t2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x1

    invoke-static {v0, p3, p4, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    .line 20
    sget-object p4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    invoke-virtual {p4, p0, v0, p3, p2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 21
    invoke-direct {p0, p3}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method static synthetic runForResult$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/braze/Braze;->runForResult(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final setCustomBrazeNotificationFactory(Lcom/braze/IBrazeNotificationFactory;)V
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->setCustomBrazeNotificationFactory(Lcom/braze/IBrazeNotificationFactory;)V

    return-void
.end method

.method public static final setEndpointProvider(Lcom/braze/IBrazeEndpointProvider;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->setEndpointProvider(Lcom/braze/IBrazeEndpointProvider;)V

    return-void
.end method

.method public static final setOutboundNetworkRequestsOffline(Z)V
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->setOutboundNetworkRequestsOffline(Z)V

    return-void
.end method

.method private final setSyncPolicyOfflineStatus(Z)V
    .locals 6

    .line 1
    new-instance v1, Lcom/braze/Braze$y2;

    invoke-direct {v1, p1}, Lcom/braze/Braze$y2;-><init>(Z)V

    new-instance v3, Lcom/braze/Braze$z2;

    invoke-direct {v3, p0, p1}, Lcom/braze/Braze$z2;-><init>(Lcom/braze/Braze;Z)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private final setUserSpecificMemberVariablesAndStartDispatch(Lbo/app/n6;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/braze/Braze;->setUdm$android_sdk_base_release(Lbo/app/y2;)V

    .line 2
    sget-object p1, Lbo/app/x4;->a:Lbo/app/x4;

    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->k()Lbo/app/a1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbo/app/x4;->a(Lbo/app/a1;)V

    .line 6
    new-instance p1, Lcom/braze/BrazeUser;

    .line 7
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->b()Lbo/app/m6;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->m()Lbo/app/y1;

    move-result-object v3

    .line 9
    iget-object v0, p0, Lcom/braze/Braze;->offlineUserStorageProvider:Lbo/app/r3;

    if-nez v0, :cond_0

    const-string v0, "offlineUserStorageProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lbo/app/r3;->a()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->h()Lbo/app/o;

    move-result-object v5

    .line 11
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->e()Lbo/app/a5;

    move-result-object v6

    move-object v1, p1

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/braze/BrazeUser;-><init>(Lbo/app/m6;Lbo/app/y1;Ljava/lang/String;Lbo/app/i2;Lbo/app/a5;)V

    iput-object p1, p0, Lcom/braze/Braze;->brazeUser:Lcom/braze/BrazeUser;

    .line 19
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object p1

    invoke-interface {p1}, Lbo/app/y2;->q()Lbo/app/z0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->k()Lbo/app/a1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbo/app/z0;->a(Lbo/app/g2;)V

    .line 20
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object p1

    invoke-interface {p1}, Lbo/app/y2;->n()Lbo/app/f;

    move-result-object p1

    invoke-virtual {p1}, Lbo/app/f;->d()V

    .line 21
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object p1

    invoke-interface {p1}, Lbo/app/y2;->f()Lbo/app/c1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->n()Lbo/app/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbo/app/c1;->a(Lbo/app/e2;)V

    return-void
.end method

.method private final verifyProperSdkSetup()V
    .locals 12

    .line 1
    sget-object v0, Lcom/braze/Braze;->NECESSARY_BRAZE_SDK_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    iget-object v4, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/braze/support/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/Braze$l3;

    invoke-direct {v9, v2}, Lcom/braze/Braze$l3;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    move v1, v3

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getBrazeApiKey()Lbo/app/i;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lbo/app/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v8, Lcom/braze/Braze$m3;->b:Lcom/braze/Braze$m3;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    move v1, v3

    :cond_2
    if-nez v1, :cond_3

    .line 15
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v6, Lcom/braze/Braze$n3;->b:Lcom/braze/Braze$n3;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static final wipeData(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->wipeData(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic addSerializedCardJsonToStorage$android_sdk_base_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "serializedCardJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$f;

    invoke-direct {v2, p2, p1}, Lcom/braze/Braze$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/braze/Braze$g;

    invoke-direct {v4, p1, p0, p2}, Lcom/braze/Braze$g;-><init>(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public addSingleSynchronousSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/braze/events/IEventSubscriber<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v0, Lorg/apache/http/impl/ioGi/maoGUKggpn;->egvLWMTOMv:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    invoke-interface {v0, p2, p1}, Lbo/app/g2;->b(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v2, Lcom/braze/Braze$h;

    invoke-direct {v2, p2}, Lcom/braze/Braze$h;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final synthetic applyPendingRuntimeConfiguration$android_sdk_base_release()V
    .locals 12

    .line 1
    sget-object v0, Lcom/braze/Braze;->brazeClassLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/Braze$i;->b:Lcom/braze/Braze$i;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/braze/configuration/RuntimeAppConfigurationProvider;

    iget-object v2, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v2, Lcom/braze/Braze;->pendingConfigurations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/braze/configuration/BrazeConfig;

    .line 5
    sget-object v4, Lcom/braze/Braze;->clearConfigSentinel:Lcom/braze/configuration/BrazeConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v9, Lcom/braze/Braze$j;->b:Lcom/braze/Braze$j;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->clearAllConfigurationValues()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/Braze$k;

    invoke-direct {v8, v3}, Lcom/braze/Braze$k;-><init>(Lcom/braze/configuration/BrazeConfig;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    invoke-virtual {v1, v3}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->setConfiguration(Lcom/braze/configuration/BrazeConfig;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v1, Lcom/braze/Braze;->pendingConfigurations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public changeUser(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/braze/Braze;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2
    new-instance v1, Lcom/braze/Braze$n;

    invoke-direct {v1, p1}, Lcom/braze/Braze$n;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/braze/Braze$o;

    invoke-direct {v3, p1, p0, p2}, Lcom/braze/Braze$o;-><init>(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public closeSession(Landroid/app/Activity;)V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$p;->b:Lcom/braze/Braze$p;

    new-instance v3, Lcom/braze/Braze$q;

    invoke-direct {v3, p1, p0}, Lcom/braze/Braze$q;-><init>(Landroid/app/Activity;Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public deserializeContentCard(Ljava/lang/String;)Lcom/braze/models/cards/Card;
    .locals 9

    .line 1
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    .line 5
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v6, Lcom/braze/Braze$t;->b:Lcom/braze/Braze$t;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 9
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/braze/Braze;->deserializeContentCard(Lorg/json/JSONObject;)Lcom/braze/models/cards/Card;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lcom/braze/Braze$u;

    invoke-direct {v4, p1}, Lcom/braze/Braze$u;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3, v0, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public deserializeContentCard(Lorg/json/JSONObject;)Lcom/braze/models/cards/Card;
    .locals 7

    .line 13
    new-instance v2, Lcom/braze/Braze$v;

    invoke-direct {v2, p1}, Lcom/braze/Braze$v;-><init>(Lorg/json/JSONObject;)V

    new-instance v4, Lcom/braze/Braze$w;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/braze/Braze$w;-><init>(Lorg/json/JSONObject;Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->runForResult$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/braze/models/cards/Card;

    return-object p1
.end method

.method public deserializeInAppMessageString(Ljava/lang/String;)Lcom/braze/models/inappmessage/IInAppMessage;
    .locals 7

    .line 1
    new-instance v2, Lcom/braze/Braze$x;

    invoke-direct {v2, p1}, Lcom/braze/Braze$x;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/braze/Braze$y;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/braze/Braze$y;-><init>(Ljava/lang/String;Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->runForResult$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/braze/models/inappmessage/IInAppMessage;

    return-object p1
.end method

.method public getAllFeatureFlags()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/FeatureFlag;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/braze/Braze$b0;->b:Lcom/braze/Braze$b0;

    new-instance v4, Lcom/braze/Braze$c0;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/braze/Braze$c0;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->runForResult$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getCachedContentCards()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/cards/Card;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/braze/Braze;->getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/braze/events/ContentCardsUpdatedEvent;->getAllCards()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v6, Lcom/braze/Braze$d0;->b:Lcom/braze/Braze$d0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1
.end method

.method public final getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "configurationProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentCardCount()I
    .locals 9

    .line 1
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/braze/Braze;->getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/braze/events/ContentCardsUpdatedEvent;->getCardCount()I

    move-result v0

    return v0

    .line 8
    :cond_1
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v6, Lcom/braze/Braze$e0;->b:Lcom/braze/Braze$e0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1
.end method

.method public getContentCardUnviewedCount()I
    .locals 9

    .line 1
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/braze/Braze;->getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/braze/events/ContentCardsUpdatedEvent;->getUnviewedCardCount()I

    move-result v0

    return v0

    .line 8
    :cond_1
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v6, Lcom/braze/Braze$f0;->b:Lcom/braze/Braze$f0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1
.end method

.method public getContentCardsLastUpdatedInSecondsFromEpoch()J
    .locals 10

    .line 1
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/braze/Braze;->getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/braze/events/ContentCardsUpdatedEvent;->getTimestampSeconds()J

    move-result-wide v0

    return-wide v0

    .line 8
    :cond_1
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v7, Lcom/braze/Braze$g0;->b:Lcom/braze/Braze$g0;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-wide v1
.end method

.method public getCurrentUser()Lcom/braze/BrazeUser;
    .locals 4

    .line 1
    sget-object v0, Lcom/braze/Braze$r;->b:Lcom/braze/Braze$r;

    new-instance v1, Lcom/braze/Braze$s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/braze/Braze$s;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/braze/Braze;->runForResult(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/BrazeUser;

    return-object v0
.end method

.method public getCurrentUser(Lcom/braze/events/IValueCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IValueCallback<",
            "Lcom/braze/BrazeUser;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completionCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/braze/events/IValueCallback;->onError()V

    return-void

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lbo/app/x4;->a:Lbo/app/x4;

    new-instance v4, Lcom/braze/Braze$h0;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/braze/Braze$h0;-><init>(Lcom/braze/events/IValueCallback;Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v3, Lcom/braze/Braze$i0;->b:Lcom/braze/Braze$i0;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 18
    invoke-interface {p1}, Lcom/braze/events/IValueCallback;->onError()V

    .line 19
    invoke-direct {p0, v0}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/braze/Braze$z;->b:Lcom/braze/Braze$z;

    new-instance v1, Lcom/braze/Braze$a0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/braze/Braze$a0;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/braze/Braze;->runForResult(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceIdReader$android_sdk_base_release()Lbo/app/d2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->deviceIdReader:Lbo/app/d2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceIdReader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExternalIEventMessenger$android_sdk_base_release()Lbo/app/g2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    return-object v0
.end method

.method public getFeatureFlag(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/braze/models/FeatureFlag;->Companion:Lcom/braze/models/FeatureFlag$a;

    invoke-virtual {v0, p1}, Lcom/braze/models/FeatureFlag$a;->a(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;

    move-result-object v2

    new-instance v3, Lcom/braze/Braze$j0;

    invoke-direct {v3, p1}, Lcom/braze/Braze$j0;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/braze/Braze$k0;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/braze/Braze$k0;-><init>(Lcom/braze/Braze;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->runForResult$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/braze/models/FeatureFlag;

    return-object p1
.end method

.method public getImageLoader()Lcom/braze/images/IBrazeImageLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->imageLoader:Lcom/braze/images/IBrazeImageLoader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "imageLoader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegisteredPushToken()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v2, Lcom/braze/Braze$r1;->b:Lcom/braze/Braze$r1;

    new-instance v4, Lcom/braze/Braze$s1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/braze/Braze$s1;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->runForResult$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUdm$android_sdk_base_release()Lbo/app/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->udm:Lbo/app/y2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "udm"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic handleInAppMessageTestPush$android_sdk_base_release(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/braze/Braze$l0;->b:Lcom/braze/Braze$l0;

    new-instance v4, Lcom/braze/Braze$m0;

    invoke-direct {v4, p1, p0}, Lcom/braze/Braze$m0;-><init>(Landroid/content/Intent;Lcom/braze/Braze;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final isApiKeyPresent$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->isApiKeyPresent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public logCustomEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/braze/Braze;->logCustomEvent(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public logCustomEvent(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/braze/models/outgoing/BrazeProperties;->clone()Lcom/braze/models/outgoing/BrazeProperties;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    new-instance v1, Lcom/braze/Braze$p0;

    invoke-direct {v1, p1}, Lcom/braze/Braze$p0;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/braze/Braze$q0;

    invoke-direct {v3, p1, p0, p2}, Lcom/braze/Braze$q0;-><init>(Ljava/lang/String;Lcom/braze/Braze;Lcom/braze/models/outgoing/BrazeProperties;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logFeedCardClick(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lkotlin/Deprecated;
        message = "Please call {@link Card#logClick()} instead to log a click."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Card.logClick()"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    new-instance v1, Lcom/braze/Braze$r0;

    invoke-direct {v1, p1}, Lcom/braze/Braze$r0;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/braze/Braze$s0;

    invoke-direct {v3, p1, p0}, Lcom/braze/Braze$s0;-><init>(Ljava/lang/String;Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logFeedCardImpression(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lkotlin/Deprecated;
        message = "Please call {@link Card#logImpression()} instead to log an impression."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Card.logImpression"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    new-instance v1, Lcom/braze/Braze$t0;

    invoke-direct {v1, p1}, Lcom/braze/Braze$t0;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/braze/Braze$u0;

    invoke-direct {v3, p1, p0}, Lcom/braze/Braze$u0;-><init>(Ljava/lang/String;Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logFeedDisplayed()V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$v0;->b:Lcom/braze/Braze$v0;

    new-instance v3, Lcom/braze/Braze$w0;

    invoke-direct {v3, p0}, Lcom/braze/Braze$w0;-><init>(Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic logLocationRecordedEventFromLocationUpdate$android_sdk_base_release(Lcom/braze/models/IBrazeLocation;)V
    .locals 7

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/braze/Braze$x0;->b:Lcom/braze/Braze$x0;

    new-instance v4, Lcom/braze/Braze$y0;

    invoke-direct {v4, p1, p0}, Lcom/braze/Braze$y0;-><init>(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/braze/Braze;->logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V

    return-void
.end method

.method public logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/braze/Braze;->logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V
    .locals 8

    if-eqz p5, :cond_0

    .line 4
    invoke-virtual {p5}, Lcom/braze/models/outgoing/BrazeProperties;->clone()Lcom/braze/models/outgoing/BrazeProperties;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    move-object v6, p5

    .line 5
    new-instance p5, Lcom/braze/Braze$z0;

    invoke-direct {p5, p1}, Lcom/braze/Braze$z0;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/braze/Braze$a1;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/braze/Braze$a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/Braze;Lcom/braze/models/outgoing/BrazeProperties;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p5

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/braze/models/outgoing/BrazeProperties;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/braze/Braze;->logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public logPushNotificationActionClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$b1;->b:Lcom/braze/Braze$b1;

    new-instance v3, Lcom/braze/Braze$c1;

    invoke-direct {v3, p1, p0, p2, p3}, Lcom/braze/Braze$c1;-><init>(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPushNotificationOpened(Landroid/content/Intent;)V
    .locals 6

    .line 2
    new-instance v1, Lcom/braze/Braze$f1;

    invoke-direct {v1, p1}, Lcom/braze/Braze$f1;-><init>(Landroid/content/Intent;)V

    new-instance v3, Lcom/braze/Braze$g1;

    invoke-direct {v3, p1, p0}, Lcom/braze/Braze$g1;-><init>(Landroid/content/Intent;Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPushNotificationOpened(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v1, Lcom/braze/Braze$d1;

    invoke-direct {v1, p1}, Lcom/braze/Braze$d1;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/braze/Braze$e1;

    invoke-direct {v3, p1, p0}, Lcom/braze/Braze$e1;-><init>(Ljava/lang/String;Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPushStoryPageClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v1, Lcom/braze/Braze$h1;

    invoke-direct {v1, p2, p1}, Lcom/braze/Braze$h1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/braze/Braze$i1;

    invoke-direct {v3, p1, p2, p0}, Lcom/braze/Braze$i1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public openSession(Landroid/app/Activity;)V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$j1;->b:Lcom/braze/Braze$j1;

    new-instance v3, Lcom/braze/Braze$k1;

    invoke-direct {v3, p1, p0}, Lcom/braze/Braze$k1;-><init>(Landroid/app/Activity;Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic publishBrazePushAction$android_sdk_base_release(Lcom/braze/enums/BrazePushEventType;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 2

    const-string v0, "pushActionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    new-instance v1, Lcom/braze/events/BrazePushEvent;

    invoke-direct {v1, p1, p2}, Lcom/braze/events/BrazePushEvent;-><init>(Lcom/braze/enums/BrazePushEventType;Lcom/braze/models/push/BrazeNotificationPayload;)V

    const-class p1, Lcom/braze/events/BrazePushEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public final synthetic recordGeofenceTransition$android_sdk_base_release(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$n1;->b:Lcom/braze/Braze$n1;

    new-instance v3, Lcom/braze/Braze$o1;

    invoke-direct {v3, p1, p2, p0}, Lcom/braze/Braze$o1;-><init>(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public refreshFeatureFlags()V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$p1;->b:Lcom/braze/Braze$p1;

    new-instance v3, Lcom/braze/Braze$q1;

    invoke-direct {v3, p0}, Lcom/braze/Braze$q1;-><init>(Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/braze/events/IEventSubscriber<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "eventClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    invoke-interface {v0, p2, p1}, Lbo/app/g2;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v2, Lcom/braze/Braze$v1;

    invoke-direct {v2, p2}, Lcom/braze/Braze$v1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public requestContentCardsRefresh(Z)V
    .locals 6

    .line 1
    new-instance v1, Lcom/braze/Braze$w1;

    invoke-direct {v1, p1}, Lcom/braze/Braze$w1;-><init>(Z)V

    new-instance v3, Lcom/braze/Braze$x1;

    invoke-direct {v3, p1, p0}, Lcom/braze/Braze$x1;-><init>(ZLcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestFeedRefresh()V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$y1;->b:Lcom/braze/Braze$y1;

    new-instance v3, Lcom/braze/Braze$z1;

    invoke-direct {v3, p0}, Lcom/braze/Braze$z1;-><init>(Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestFeedRefreshFromCache()V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$a2;->b:Lcom/braze/Braze$a2;

    new-instance v3, Lcom/braze/Braze$b2;

    invoke-direct {v3, p0}, Lcom/braze/Braze$b2;-><init>(Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic requestGeofenceRefresh$android_sdk_base_release(Lcom/braze/models/IBrazeLocation;)V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$c2;->b:Lcom/braze/Braze$c2;

    new-instance v3, Lcom/braze/Braze$d2;

    invoke-direct {v3, p1, p0}, Lcom/braze/Braze$d2;-><init>(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic requestGeofenceRefresh$android_sdk_base_release(Z)V
    .locals 6

    .line 2
    new-instance v1, Lcom/braze/Braze$e2;

    invoke-direct {v1, p1}, Lcom/braze/Braze$e2;-><init>(Z)V

    new-instance v3, Lcom/braze/Braze$f2;

    invoke-direct {v3, p0, p1}, Lcom/braze/Braze$f2;-><init>(Lcom/braze/Braze;Z)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestGeofences(DD)V
    .locals 9

    .line 1
    sget-object v1, Lcom/braze/Braze$g2;->b:Lcom/braze/Braze$g2;

    new-instance v8, Lcom/braze/Braze$h2;

    move-object v2, v8

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/braze/Braze$h2;-><init>(DDLcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic requestGeofencesInitialization$android_sdk_base_release()V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$i2;->b:Lcom/braze/Braze$i2;

    new-instance v3, Lcom/braze/Braze$j2;

    invoke-direct {v3, p0}, Lcom/braze/Braze$j2;-><init>(Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestImmediateDataFlush()V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$k2;->b:Lcom/braze/Braze$k2;

    new-instance v3, Lcom/braze/Braze$l2;

    invoke-direct {v3, p0}, Lcom/braze/Braze$l2;-><init>(Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestLocationInitialization()V
    .locals 7

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/Braze$m2;->b:Lcom/braze/Braze$m2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/braze/Braze;->requestGeofencesInitialization$android_sdk_base_release()V

    .line 3
    invoke-virtual {p0}, Lcom/braze/Braze;->requestSingleLocationUpdate$android_sdk_base_release()V

    return-void
.end method

.method public final synthetic requestSingleLocationUpdate$android_sdk_base_release()V
    .locals 6

    .line 1
    sget-object v1, Lcom/braze/Braze$n2;->b:Lcom/braze/Braze$n2;

    new-instance v3, Lcom/braze/Braze$o2;

    invoke-direct {v3, p0}, Lcom/braze/Braze$o2;-><init>(Lcom/braze/Braze;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic retryInAppMessage$android_sdk_base_release(Lcom/braze/events/InAppMessageEvent;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$p2;

    invoke-direct {v2, p1}, Lcom/braze/Braze$p2;-><init>(Lcom/braze/events/InAppMessageEvent;)V

    new-instance v4, Lcom/braze/Braze$q2;

    invoke-direct {v4, p0, p1}, Lcom/braze/Braze$q2;-><init>(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic run$android_sdk_base_release(Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;)V
    .locals 7

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {p2}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lbo/app/x4;->a:Lbo/app/x4;

    new-instance v3, Lcom/braze/Braze$r2;

    const/4 p2, 0x0

    invoke-direct {v3, p3, p2}, Lcom/braze/Braze$r2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    if-nez p1, :cond_1

    .line 10
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/Braze$s2;->b:Lcom/braze/Braze$s2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object p3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    invoke-virtual {p3, p0, v0, p2, p1}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 14
    :goto_0
    invoke-direct {p0, p2}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final setApiKeyPresent$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->isApiKeyPresent:Ljava/lang/Boolean;

    return-void
.end method

.method public final setConfigurationProvider$android_sdk_base_release(Lcom/braze/configuration/BrazeConfigurationProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    return-void
.end method

.method public final setDeviceIdReader$android_sdk_base_release(Lbo/app/d2;)V
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Landroidx/core/view/accessibility/jw/tbDfchcNBxcYj;->XoBZ:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->deviceIdReader:Lbo/app/d2;

    return-void
.end method

.method public final setExternalIEventMessenger$android_sdk_base_release(Lbo/app/g2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    return-void
.end method

.method public setGoogleAdvertisingId(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "googleAdvertisingId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$u2;

    invoke-direct {v2, p1, p2}, Lcom/braze/Braze$u2;-><init>(Ljava/lang/String;Z)V

    new-instance v4, Lcom/braze/Braze$v2;

    invoke-direct {v4, p1, p0, p2}, Lcom/braze/Braze$v2;-><init>(Ljava/lang/String;Lcom/braze/Braze;Z)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public setImageLoader(Lcom/braze/images/IBrazeImageLoader;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->imageLoader:Lcom/braze/images/IBrazeImageLoader;

    return-void
.end method

.method public setRegisteredPushToken(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v1, Lcom/braze/Braze$t1;

    invoke-direct {v1, p1}, Lcom/braze/Braze$t1;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/braze/Braze$u1;

    invoke-direct {v3, p0, p1}, Lcom/braze/Braze$u1;-><init>(Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public setSdkAuthenticationSignature(Ljava/lang/String;)V
    .locals 7

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$w2;

    invoke-direct {v2, p1}, Lcom/braze/Braze$w2;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/braze/Braze$x2;

    invoke-direct {v4, p0, p1}, Lcom/braze/Braze$x2;-><init>(Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final setUdm$android_sdk_base_release(Lbo/app/y2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->udm:Lbo/app/y2;

    return-void
.end method

.method public subscribeToContentCardsUpdates(Lcom/braze/events/IEventSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/ContentCardsUpdatedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    const-class v1, Lcom/braze/events/ContentCardsUpdatedEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$a3;->b:Lcom/braze/Braze$a3;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToFeatureFlagsUpdates(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/FeatureFlagsUpdatedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    const-class v1, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    .line 4
    sget-object v3, Lcom/braze/Braze$b3;->b:Lcom/braze/Braze$b3;

    new-instance v5, Lcom/braze/Braze$c3;

    invoke-direct {v5, p0}, Lcom/braze/Braze$c3;-><init>(Lcom/braze/Braze;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$d3;->b:Lcom/braze/Braze$d3;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToFeedUpdates(Lcom/braze/events/IEventSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/FeedUpdatedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    const-class v1, Lcom/braze/events/FeedUpdatedEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$e3;->b:Lcom/braze/Braze$e3;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToNetworkFailures(Lcom/braze/events/IEventSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BrazeNetworkFailureEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    const-class v1, Lcom/braze/events/BrazeNetworkFailureEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$f3;->b:Lcom/braze/Braze$f3;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToNewInAppMessages(Lcom/braze/events/IEventSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/InAppMessageEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    const-class v1, Lcom/braze/events/InAppMessageEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$g3;->b:Lcom/braze/Braze$g3;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToNoMatchingTriggerForEvent(Lcom/braze/events/IEventSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/NoMatchingTriggerEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    const-class v1, Lcom/braze/events/NoMatchingTriggerEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$h3;->b:Lcom/braze/Braze$h3;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToPushNotificationEvents(Lcom/braze/events/IEventSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BrazePushEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    const-class v1, Lcom/braze/events/BrazePushEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$i3;->b:Lcom/braze/Braze$i3;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToSdkAuthenticationFailures(Lcom/braze/events/IEventSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    const-class v1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$j3;->b:Lcom/braze/Braze$j3;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToSessionUpdates(Lcom/braze/events/IEventSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/SessionStateChangedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lbo/app/g2;

    const-class v1, Lcom/braze/events/SessionStateChangedEvent;

    invoke-interface {v0, v1, p1}, Lbo/app/g2;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/Braze$k3;->b:Lcom/braze/Braze$k3;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final synthetic waitForUserDependencyThread$android_sdk_base_release()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/braze/Braze$o3;->b:Lcom/braze/Braze$o3;

    new-instance v1, Lcom/braze/Braze$p3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/braze/Braze$p3;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/braze/Braze;->runForResult(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v3, Lcom/braze/Braze$q3;->b:Lcom/braze/Braze$q3;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method
