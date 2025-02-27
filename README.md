# 2LAB Memory Management Decisions 
The project utilizes Automatic Reference Counting (ARC) for memory management. To prevent memory leaks and retain cycles, the following strategies were applied:
1.	Using weak for Delegates
	•	In ProfileManager, the delegate property is declared as weak to avoid strong reference cycles between ProfileManager and its delegate:
```
weak var delegate: ProfileUpdateDelegate?
```

	2.	Using [weak self] in Closures
	•	When updating the UI on the main thread, self is captured as weak to prevent the closure from strongly retaining ProfileManager:
 ```
DispatchQueue.main.async { [weak self] in
    guard let self = self else { return }
    completion(.success(profile))
    self.delegate?.profileDidUpdate(profile)
    self.onProfileUpdate?(profile)
}
```
