

variable (U : Type)
variable (A B C : U → Prop)
variable (R : U → U → Prop)

example (hA : ∀ x, A x) (hB : ∀ x, B x) : ∀ x, A x ∧ B x := by
    intro h1
    constructor
    · apply hA
    · apply hB

example (hA : ∀ x, A x) (hB : ∀ x, B x) : ∀ x, A x ∧ B x :=
    fun y => ⟨hA y, hB y⟩
